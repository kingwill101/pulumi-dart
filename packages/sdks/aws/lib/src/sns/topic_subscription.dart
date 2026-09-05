import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_subscription_args.dart';
import 'topic_subscription_state.dart';

/// Provides a resource for subscribing to SNS topics. Requires that an SNS topic exist for the subscription to attach to. This resource allows you to automatically place messages sent to SNS topics in SQS queues, send them as HTTP(S) POST requests to a given endpoint, send SMS messages, or notify devices / applications. The most likely use case for provider users will probably be SQS queues.
///
/// &gt; **NOTE:** If the SNS topic and SQS queue are in different AWS regions, the `aws.sns.TopicSubscription` must use an AWS provider that is in the same region as the SNS topic. If the `aws.sns.TopicSubscription` uses a provider with a different region than the SNS topic, this provider will fail to create the subscription.
///
/// &gt; **NOTE:** Setup of cross-account subscriptions from SNS topics to SQS queues requires the provider to have access to BOTH accounts.
///
/// &gt; **NOTE:** If an SNS topic and SQS queue are in different AWS accounts but the same region, the `aws.sns.TopicSubscription` must use the AWS provider for the account with the SQS queue. If `aws.sns.TopicSubscription` uses a Provider with a different account than the SQS queue, this provider creates the subscription but does not keep state and tries to re-create the subscription at every `apply`.
///
/// &gt; **NOTE:** If an SNS topic and SQS queue are in different AWS accounts and different AWS regions, the subscription needs to be initiated from the account with the SQS queue but in the region of the SNS topic.
///
/// &gt; **NOTE:** You cannot unsubscribe to a subscription that is pending confirmation. If you use `email`, `email-json`, or `http`/`https` (without auto-confirmation enabled), until the subscription is confirmed (e.g., outside of this provider), AWS does not allow this provider to delete / unsubscribe the subscription. If you `destroy` an unconfirmed subscription, this provider will remove the subscription from its state but the subscription will still exist in AWS. However, if you delete an SNS topic, SNS [deletes all the subscriptions](https://docs.aws.amazon.com/sns/latest/dg/sns-delete-subscription-topic.html) associated with the topic. Also, you can import a subscription after confirmation and then have the capability to delete it.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const userUpdates = new aws.sns.Topic("user_updates", {name: "user-updates-topic"});
/// const sqsQueuePolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "ArnEquals",
///             variable: "aws:SourceArn",
///             values: [userUpdates.arn],
///         }],
///         principals: [{
///             type: "Service",
///             identifiers: ["sns.amazonaws.com"],
///         }],
///         sid: "user_updates_sqs_target",
///         effect: "Allow",
///         actions: ["SQS:SendMessage"],
///         resources: ["arn:aws:sqs:us-west-2:123456789012:user-updates-queue"],
///     }],
///     policyId: "arn:aws:sqs:us-west-2:123456789012:user_updates_queue/SQSDefaultPolicy",
/// });
/// const userUpdatesQueue = new aws.sqs.Queue("user_updates_queue", {
///     name: "user-updates-queue",
///     policy: sqsQueuePolicy.json,
/// });
/// const userUpdatesSqsTarget = new aws.sns.TopicSubscription("user_updates_sqs_target", {
///     topic: userUpdates.arn,
///     protocol: "sqs",
///     endpoint: userUpdatesQueue.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// user_updates = aws.sns.Topic("user_updates", name="user-updates-topic")
/// sqs_queue_policy = aws.iam.get_policy_document_output(statements=[{
///         "conditions": [{
///             "test": "ArnEquals",
///             "variable": "aws:SourceArn",
///             "values": [user_updates.arn],
///         }],
///         "principals": [{
///             "type": "Service",
///             "identifiers": ["sns.amazonaws.com"],
///         }],
///         "sid": "user_updates_sqs_target",
///         "effect": "Allow",
///         "actions": ["SQS:SendMessage"],
///         "resources": ["arn:aws:sqs:us-west-2:123456789012:user-updates-queue"],
///     }],
///     policy_id="arn:aws:sqs:us-west-2:123456789012:user_updates_queue/SQSDefaultPolicy")
/// user_updates_queue = aws.sqs.Queue("user_updates_queue",
///     name="user-updates-queue",
///     policy=sqs_queue_policy.json)
/// user_updates_sqs_target = aws.sns.TopicSubscription("user_updates_sqs_target",
///     topic=user_updates.arn,
///     protocol="sqs",
///     endpoint=user_updates_queue.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var userUpdates = new Aws.Sns.Topic("user_updates", new()
///     {
///         Name = "user-updates-topic",
///     });
///
///     var sqsQueuePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ArnEquals",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             userUpdates.Arn,
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "sns.amazonaws.com",
///                         },
///                     },
///                 },
///                 Sid = "user_updates_sqs_target",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "SQS:SendMessage",
///                 },
///                 Resources = new[]
///                 {
///                     "arn:aws:sqs:us-west-2:123456789012:user-updates-queue",
///                 },
///             },
///         },
///         PolicyId = "arn:aws:sqs:us-west-2:123456789012:user_updates_queue/SQSDefaultPolicy",
///     });
///
///     var userUpdatesQueue = new Aws.Sqs.Queue("user_updates_queue", new()
///     {
///         Name = "user-updates-queue",
///         Policy = sqsQueuePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var userUpdatesSqsTarget = new Aws.Sns.TopicSubscription("user_updates_sqs_target", new()
///     {
///         Topic = userUpdates.Arn,
///         Protocol = "sqs",
///         Endpoint = userUpdatesQueue.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		userUpdates, err := sns.NewTopic(ctx, "user_updates", &sns.TopicArgs{
/// 			Name: pulumi.String("user-updates-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqsQueuePolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("ArnEquals"),
/// 							Variable: pulumi.String("aws:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								userUpdates.Arn,
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("sns.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.String("user_updates_sqs_target"),
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SQS:SendMessage"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						pulumi.String("arn:aws:sqs:us-west-2:123456789012:user-updates-queue"),
/// 					},
/// 				},
/// 			},
/// 			PolicyId: pulumi.String("arn:aws:sqs:us-west-2:123456789012:user_updates_queue/SQSDefaultPolicy"),
/// 		}, nil)
/// 		userUpdatesQueue, err := sqs.NewQueue(ctx, "user_updates_queue", &sqs.QueueArgs{
/// 			Name:   pulumi.String("user-updates-queue"),
/// 			Policy: sqsQueuePolicy.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sns.NewTopicSubscription(ctx, "user_updates_sqs_target", &sns.TopicSubscriptionArgs{
/// 			Topic:    userUpdates.Arn,
/// 			Protocol: pulumi.String("sqs"),
/// 			Endpoint: userUpdatesQueue.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "sqsQueuePolicy" {
///   statements {
///     conditions {
///       test     = "ArnEquals"
///       variable = "aws:SourceArn"
///       values   = [aws_sns_topic.user_updates.arn]
///     }
///     principals {
///       type        = "Service"
///       identifiers = ["sns.amazonaws.com"]
///     }
///     sid       = "user_updates_sqs_target"
///     effect    = "Allow"
///     actions   = ["SQS:SendMessage"]
///     resources = ["arn:aws:sqs:us-west-2:123456789012:user-updates-queue"]
///   }
///   policy_id = "arn:aws:sqs:us-west-2:123456789012:user_updates_queue/SQSDefaultPolicy"
/// }
///
/// resource "aws_sns_topic" "user_updates" {
///   name = "user-updates-topic"
/// }
/// resource "aws_sqs_queue" "user_updates_queue" {
///   name   = "user-updates-queue"
///   policy = data.aws_iam_getpolicydocument.sqsQueuePolicy.json
/// }
/// resource "aws_sns_topicsubscription" "user_updates_sqs_target" {
///   topic    = aws_sns_topic.user_updates.arn
///   protocol = "sqs"
///   endpoint = aws_sqs_queue.user_updates_queue.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.sns.TopicSubscription;
/// import com.pulumi.aws.sns.TopicSubscriptionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var userUpdates = new Topic("userUpdates", TopicArgs.builder()
///             .name("user-updates-topic")
///             .build());
///
///         final var sqsQueuePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnEquals")
///                     .variable("aws:SourceArn")
///                     .values(userUpdates.arn())
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("sns.amazonaws.com")
///                     .build())
///                 .sid("user_updates_sqs_target")
///                 .effect("Allow")
///                 .actions("SQS:SendMessage")
///                 .resources("arn:aws:sqs:us-west-2:123456789012:user-updates-queue")
///                 .build())
///             .policyId("arn:aws:sqs:us-west-2:123456789012:user_updates_queue/SQSDefaultPolicy")
///             .build());
///
///         var userUpdatesQueue = new Queue("userUpdatesQueue", QueueArgs.builder()
///             .name("user-updates-queue")
///             .policy(sqsQueuePolicy.applyValue(_sqsQueuePolicy -> _sqsQueuePolicy.json()))
///             .build());
///
///         var userUpdatesSqsTarget = new TopicSubscription("userUpdatesSqsTarget", TopicSubscriptionArgs.builder()
///             .topic(userUpdates.arn())
///             .protocol("sqs")
///             .endpoint(userUpdatesQueue.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   userUpdates:
///     type: aws:sns:Topic
///     name: user_updates
///     properties:
///       name: user-updates-topic
///   userUpdatesQueue:
///     type: aws:sqs:Queue
///     name: user_updates_queue
///     properties:
///       name: user-updates-queue
///       policy: ${sqsQueuePolicy.json}
///   userUpdatesSqsTarget:
///     type: aws:sns:TopicSubscription
///     name: user_updates_sqs_target
///     properties:
///       topic: ${userUpdates.arn}
///       protocol: sqs
///       endpoint: ${userUpdatesQueue.arn}
/// variables:
///   sqsQueuePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: ArnEquals
///                 variable: aws:SourceArn
///                 values:
///                   - ${userUpdates.arn}
///             principals:
///               - type: Service
///                 identifiers:
///                   - sns.amazonaws.com
///             sid: user_updates_sqs_target
///             effect: Allow
///             actions:
///               - SQS:SendMessage
///             resources:
///               - arn:aws:sqs:us-west-2:123456789012:user-updates-queue
///         policyId: arn:aws:sqs:us-west-2:123456789012:user_updates_queue/SQSDefaultPolicy
/// ```
///
///
/// ### Example Cross-account Subscription
///
/// You can subscribe SNS topics to SQS queues in different Amazon accounts and regions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const sns = config.getObject<any>("sns") || {
///     "account-id": "111111111111",
///     displayName: "example",
///     name: "example-sns-topic",
///     region: "us-west-1",
///     "role-name": "service/service",
/// };
/// const sqs = config.getObject<any>("sqs") || {
///     "account-id": "222222222222",
///     name: "example-sqs-queue",
///     region: "us-east-1",
///     "role-name": "service/service",
/// };
/// const snsTopicPolicy = aws.iam.getPolicyDocument({
///     statements: [
///         {
///             conditions: [{
///                 test: "StringEquals",
///                 variable: "AWS:SourceOwner",
///                 values: [sns["account-id"]],
///             }],
///             principals: [{
///                 type: "AWS",
///                 identifiers: ["*"],
///             }],
///             actions: [
///                 "SNS:Subscribe",
///                 "SNS:SetTopicAttributes",
///                 "SNS:RemovePermission",
///                 "SNS:Publish",
///                 "SNS:ListSubscriptionsByTopic",
///                 "SNS:GetTopicAttributes",
///                 "SNS:DeleteTopic",
///                 "SNS:AddPermission",
///             ],
///             effect: "Allow",
///             resources: [`arn:aws:sns:${sns.region}:${sns["account-id"]}:${sns.name}`],
///             sid: "__default_statement_ID",
///         },
///         {
///             conditions: [{
///                 test: "StringLike",
///                 variable: "SNS:Endpoint",
///                 values: [`arn:aws:sqs:${sqs.region}:${sqs["account-id"]}:${sqs.name}`],
///             }],
///             principals: [{
///                 type: "AWS",
///                 identifiers: ["*"],
///             }],
///             actions: [
///                 "SNS:Subscribe",
///                 "SNS:Receive",
///             ],
///             effect: "Allow",
///             resources: [`arn:aws:sns:${sns.region}:${sns["account-id"]}:${sns.name}`],
///             sid: "__console_sub_0",
///         },
///     ],
///     policyId: "__default_policy_ID",
/// });
/// const sqsQueuePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         conditions: [{
///             test: "ArnEquals",
///             variable: "aws:SourceArn",
///             values: [`arn:aws:sns:${sns.region}:${sns["account-id"]}:${sns.name}`],
///         }],
///         principals: [{
///             type: "AWS",
///             identifiers: ["*"],
///         }],
///         sid: "example-sns-topic",
///         effect: "Allow",
///         actions: ["SQS:SendMessage"],
///         resources: [`arn:aws:sqs:${sqs.region}:${sqs["account-id"]}:${sqs.name}`],
///     }],
///     policyId: `arn:aws:sqs:${sqs.region}:${sqs["account-id"]}:${sqs.name}/SQSDefaultPolicy`,
/// });
/// const snsTopic = new aws.sns.Topic("sns_topic", {
///     name: sns.name,
///     displayName: sns.display_name,
///     policy: snsTopicPolicy.then(snsTopicPolicy => snsTopicPolicy.json),
/// });
/// const sqsQueue = new aws.sqs.Queue("sqs_queue", {
///     name: sqs.name,
///     policy: sqsQueuePolicy.then(sqsQueuePolicy => sqsQueuePolicy.json),
/// });
/// const snsTopicTopicSubscription = new aws.sns.TopicSubscription("sns_topic", {
///     topic: snsTopic.arn,
///     protocol: "sqs",
///     endpoint: sqsQueue.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// sns = config.get_object("sns")
/// if sns is None:
///     sns = {
///         "account-id": "111111111111",
///         "displayName": "example",
///         "name": "example-sns-topic",
///         "region": "us-west-1",
///         "role-name": "service/service",
///     }
/// sqs = config.get_object("sqs")
/// if sqs is None:
///     sqs = {
///         "account-id": "222222222222",
///         "name": "example-sqs-queue",
///         "region": "us-east-1",
///         "role-name": "service/service",
///     }
/// sns_topic_policy = aws.iam.get_policy_document(statements=[
///         {
///             "conditions": [{
///                 "test": "StringEquals",
///                 "variable": "AWS:SourceOwner",
///                 "values": [sns["account-id"]],
///             }],
///             "principals": [{
///                 "type": "AWS",
///                 "identifiers": ["*"],
///             }],
///             "actions": [
///                 "SNS:Subscribe",
///                 "SNS:SetTopicAttributes",
///                 "SNS:RemovePermission",
///                 "SNS:Publish",
///                 "SNS:ListSubscriptionsByTopic",
///                 "SNS:GetTopicAttributes",
///                 "SNS:DeleteTopic",
///                 "SNS:AddPermission",
///             ],
///             "effect": "Allow",
///             "resources": [f"arn:aws:sns:{sns['region']}:{sns['account-id']}:{sns['name']}"],
///             "sid": "__default_statement_ID",
///         },
///         {
///             "conditions": [{
///                 "test": "StringLike",
///                 "variable": "SNS:Endpoint",
///                 "values": [f"arn:aws:sqs:{sqs['region']}:{sqs['account-id']}:{sqs['name']}"],
///             }],
///             "principals": [{
///                 "type": "AWS",
///                 "identifiers": ["*"],
///             }],
///             "actions": [
///                 "SNS:Subscribe",
///                 "SNS:Receive",
///             ],
///             "effect": "Allow",
///             "resources": [f"arn:aws:sns:{sns['region']}:{sns['account-id']}:{sns['name']}"],
///             "sid": "__console_sub_0",
///         },
///     ],
///     policy_id="__default_policy_ID")
/// sqs_queue_policy = aws.iam.get_policy_document(statements=[{
///         "conditions": [{
///             "test": "ArnEquals",
///             "variable": "aws:SourceArn",
///             "values": [f"arn:aws:sns:{sns['region']}:{sns['account-id']}:{sns['name']}"],
///         }],
///         "principals": [{
///             "type": "AWS",
///             "identifiers": ["*"],
///         }],
///         "sid": "example-sns-topic",
///         "effect": "Allow",
///         "actions": ["SQS:SendMessage"],
///         "resources": [f"arn:aws:sqs:{sqs['region']}:{sqs['account-id']}:{sqs['name']}"],
///     }],
///     policy_id=f"arn:aws:sqs:{sqs['region']}:{sqs['account-id']}:{sqs['name']}/SQSDefaultPolicy")
/// sns_topic = aws.sns.Topic("sns_topic",
///     name=sns["name"],
///     display_name=sns["display_name"],
///     policy=sns_topic_policy.json)
/// sqs_queue = aws.sqs.Queue("sqs_queue",
///     name=sqs["name"],
///     policy=sqs_queue_policy.json)
/// sns_topic_topic_subscription = aws.sns.TopicSubscription("sns_topic",
///     topic=sns_topic.arn,
///     protocol="sqs",
///     endpoint=sqs_queue.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var sns = config.GetObject<dynamic>("sns") ??
///     {
///         { "account-id", "111111111111" },
///         { "displayName", "example" },
///         { "name", "example-sns-topic" },
///         { "region", "us-west-1" },
///         { "role-name", "service/service" },
///     };
///     var sqs = config.GetObject<dynamic>("sqs") ??
///     {
///         { "account-id", "222222222222" },
///         { "name", "example-sqs-queue" },
///         { "region", "us-east-1" },
///         { "role-name", "service/service" },
///     };
///     var snsTopicPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "AWS:SourceOwner",
///                         Values = new[]
///                         {
///                             sns.Account_id,
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "SNS:Subscribe",
///                     "SNS:SetTopicAttributes",
///                     "SNS:RemovePermission",
///                     "SNS:Publish",
///                     "SNS:ListSubscriptionsByTopic",
///                     "SNS:GetTopicAttributes",
///                     "SNS:DeleteTopic",
///                     "SNS:AddPermission",
///                 },
///                 Effect = "Allow",
///                 Resources = new[]
///                 {
///                     $"arn:aws:sns:{sns.Region}:{sns.Account_id}:{sns.Name}",
///                 },
///                 Sid = "__default_statement_ID",
///             },
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringLike",
///                         Variable = "SNS:Endpoint",
///                         Values = new[]
///                         {
///                             $"arn:aws:sqs:{sqs.Region}:{sqs.Account_id}:{sqs.Name}",
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "SNS:Subscribe",
///                     "SNS:Receive",
///                 },
///                 Effect = "Allow",
///                 Resources = new[]
///                 {
///                     $"arn:aws:sns:{sns.Region}:{sns.Account_id}:{sns.Name}",
///                 },
///                 Sid = "__console_sub_0",
///             },
///         },
///         PolicyId = "__default_policy_ID",
///     });
///
///     var sqsQueuePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "ArnEquals",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             $"arn:aws:sns:{sns.Region}:{sns.Account_id}:{sns.Name}",
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Sid = "example-sns-topic",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "SQS:SendMessage",
///                 },
///                 Resources = new[]
///                 {
///                     $"arn:aws:sqs:{sqs.Region}:{sqs.Account_id}:{sqs.Name}",
///                 },
///             },
///         },
///         PolicyId = $"arn:aws:sqs:{sqs.Region}:{sqs.Account_id}:{sqs.Name}/SQSDefaultPolicy",
///     });
///
///     var snsTopic = new Aws.Sns.Topic("sns_topic", new()
///     {
///         Name = sns.Name,
///         DisplayName = sns.Display_name,
///         Policy = snsTopicPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var sqsQueue = new Aws.Sqs.Queue("sqs_queue", new()
///     {
///         Name = sqs.Name,
///         Policy = sqsQueuePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var snsTopicTopicSubscription = new Aws.Sns.TopicSubscription("sns_topic", new()
///     {
///         Topic = snsTopic.Arn,
///         Protocol = "sqs",
///         Endpoint = sqsQueue.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		sns2 := map[string]string{
/// 			"account-id":  "111111111111",
/// 			"displayName": "example",
/// 			"name":        "example-sns-topic",
/// 			"region":      "us-west-1",
/// 			"role-name":   "service/service",
/// 		}
/// 		if param := cfg.GetObject("sns"); param != nil {
/// 			sns2 = param
/// 		}
/// 		sqs2 := map[string]string{
/// 			"account-id": "222222222222",
/// 			"name":       "example-sqs-queue",
/// 			"region":     "us-east-1",
/// 			"role-name":  "service/service",
/// 		}
/// 		if param := cfg.GetObject("sqs"); param != nil {
/// 			sqs2 = param
/// 		}
/// 		snsTopicPolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "StringEquals",
/// 							Variable: "AWS:SourceOwner",
/// 							Values: pulumi.StringArray{
/// 								sns2.AccountId,
/// 							},
/// 						},
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"SNS:Subscribe",
/// 						"SNS:SetTopicAttributes",
/// 						"SNS:RemovePermission",
/// 						"SNS:Publish",
/// 						"SNS:ListSubscriptionsByTopic",
/// 						"SNS:GetTopicAttributes",
/// 						"SNS:DeleteTopic",
/// 						"SNS:AddPermission",
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Resources: []string{
/// 						fmt.Sprintf("arn:aws:sns:%v:%v:%v", sns2.Region, sns2.AccountId, sns2.Name),
/// 					},
/// 					Sid: pulumi.StringRef("__default_statement_ID"),
/// 				},
/// 				{
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "StringLike",
/// 							Variable: "SNS:Endpoint",
/// 							Values: []string{
/// 								fmt.Sprintf("arn:aws:sqs:%v:%v:%v", sqs2.Region, sqs2.AccountId, sqs2.Name),
/// 							},
/// 						},
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"SNS:Subscribe",
/// 						"SNS:Receive",
/// 					},
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Resources: []string{
/// 						fmt.Sprintf("arn:aws:sns:%v:%v:%v", sns2.Region, sns2.AccountId, sns2.Name),
/// 					},
/// 					Sid: pulumi.StringRef("__console_sub_0"),
/// 				},
/// 			},
/// 			PolicyId: pulumi.StringRef("__default_policy_ID"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqsQueuePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Conditions: []iam.GetPolicyDocumentStatementCondition{
/// 						{
/// 							Test:     "ArnEquals",
/// 							Variable: "aws:SourceArn",
/// 							Values: []string{
/// 								fmt.Sprintf("arn:aws:sns:%v:%v:%v", sns2.Region, sns2.AccountId, sns2.Name),
/// 							},
/// 						},
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "AWS",
/// 							Identifiers: []string{
/// 								"*",
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.StringRef("example-sns-topic"),
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"SQS:SendMessage",
/// 					},
/// 					Resources: []string{
/// 						fmt.Sprintf("arn:aws:sqs:%v:%v:%v", sqs2.Region, sqs2.AccountId, sqs2.Name),
/// 					},
/// 				},
/// 			},
/// 			PolicyId: pulumi.StringRef(fmt.Sprintf("arn:aws:sqs:%v:%v:%v/SQSDefaultPolicy", sqs2.Region, sqs2.AccountId, sqs2.Name)),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		snsTopic, err := sns.NewTopic(ctx, "sns_topic", &sns.TopicArgs{
/// 			Name:        pulumi.Any(sns2.Name),
/// 			DisplayName: pulumi.Any(sns2.Display_name),
/// 			Policy:      pulumi.String(snsTopicPolicy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sqsQueue, err := sqs.NewQueue(ctx, "sqs_queue", &sqs.QueueArgs{
/// 			Name:   pulumi.Any(sqs2.Name),
/// 			Policy: pulumi.String(sqsQueuePolicy.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sns.NewTopicSubscription(ctx, "sns_topic", &sns.TopicSubscriptionArgs{
/// 			Topic:    snsTopic.Arn,
/// 			Protocol: pulumi.String("sqs"),
/// 			Endpoint: sqsQueue.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_iam_getpolicydocument" "snsTopicPolicy" {
///   statements {
///     conditions {
///       test     = "StringEquals"
///       variable = "AWS:SourceOwner"
///       values   = [var.sns["account-id"]]
///     }
///     principals {
///       type        = "AWS"
///       identifiers = ["*"]
///     }
///     actions   = ["SNS:Subscribe", "SNS:SetTopicAttributes", "SNS:RemovePermission", "SNS:Publish", "SNS:ListSubscriptionsByTopic", "SNS:GetTopicAttributes", "SNS:DeleteTopic", "SNS:AddPermission"]
///     effect    = "Allow"
///     resources = ["arn:aws:sns:${var.sns["region"]}:${var.sns["account-id"]}:${var.sns["name"]}"]
///     sid       = "__default_statement_ID"
///   }
///   statements {
///     conditions {
///       test     = "StringLike"
///       variable = "SNS:Endpoint"
///       values   = ["arn:aws:sqs:${var.sqs["region"]}:${var.sqs["account-id"]}:${var.sqs["name"]}"]
///     }
///     principals {
///       type        = "AWS"
///       identifiers = ["*"]
///     }
///     actions   = ["SNS:Subscribe", "SNS:Receive"]
///     effect    = "Allow"
///     resources = ["arn:aws:sns:${var.sns["region"]}:${var.sns["account-id"]}:${var.sns["name"]}"]
///     sid       = "__console_sub_0"
///   }
///   policy_id = "__default_policy_ID"
/// }
/// data "aws_iam_getpolicydocument" "sqsQueuePolicy" {
///   statements {
///     conditions {
///       test     = "ArnEquals"
///       variable = "aws:SourceArn"
///       values   = ["arn:aws:sns:${var.sns["region"]}:${var.sns["account-id"]}:${var.sns["name"]}"]
///     }
///     principals {
///       type        = "AWS"
///       identifiers = ["*"]
///     }
///     sid       = "example-sns-topic"
///     effect    = "Allow"
///     actions   = ["SQS:SendMessage"]
///     resources = ["arn:aws:sqs:${var.sqs["region"]}:${var.sqs["account-id"]}:${var.sqs["name"]}"]
///   }
///   policy_id ="arn:aws:sqs:${var.sqs["region"]}:${var.sqs["account-id"]}:${var.sqs["name"]}/SQSDefaultPolicy"
/// }
///
/// resource "aws_sns_topic" "sns_topic" {
///   name         = var.sns["name"]
///   display_name = var.sns["display_name"]
///   policy       = data.aws_iam_getpolicydocument.snsTopicPolicy.json
/// }
/// resource "aws_sqs_queue" "sqs_queue" {
///   name   = var.sqs["name"]
///   policy = data.aws_iam_getpolicydocument.sqsQueuePolicy.json
/// }
/// resource "aws_sns_topicsubscription" "sns_topic" {
///   topic    = aws_sns_topic.sns_topic.arn
///   protocol = "sqs"
///   endpoint = aws_sqs_queue.sqs_queue.arn
/// }
/// variable "sns" {
///   default = {
///     "account-id"  = "111111111111"
///     "displayName" = "example"
///     "name"        = "example-sns-topic"
///     "region"      = "us-west-1"
///     "role-name"   = "service/service"
///   }
/// }
/// variable "sqs" {
///   default = {
///     "account-id" = "222222222222"
///     "name"       = "example-sqs-queue"
///     "region"     = "us-east-1"
///     "role-name"  = "service/service"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.sns.TopicSubscription;
/// import com.pulumi.aws.sns.TopicSubscriptionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var sns = config.get("sns").orElse(Map.ofEntries(
///             Map.entry("account-id", "111111111111"),
///             Map.entry("displayName", "example"),
///             Map.entry("name", "example-sns-topic"),
///             Map.entry("region", "us-west-1"),
///             Map.entry("role-name", "service/service")
///         ));
///         final var sqs = config.get("sqs").orElse(Map.ofEntries(
///             Map.entry("account-id", "222222222222"),
///             Map.entry("name", "example-sqs-queue"),
///             Map.entry("region", "us-east-1"),
///             Map.entry("role-name", "service/service")
///         ));
///         final var snsTopicPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(
///                 GetPolicyDocumentStatementArgs.builder()
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringEquals")
///                         .variable("AWS:SourceOwner")
///                         .values(sns.account-id())
///                         .build())
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers("*")
///                         .build())
///                     .actions(
///                         "SNS:Subscribe",
///                         "SNS:SetTopicAttributes",
///                         "SNS:RemovePermission",
///                         "SNS:Publish",
///                         "SNS:ListSubscriptionsByTopic",
///                         "SNS:GetTopicAttributes",
///                         "SNS:DeleteTopic",
///                         "SNS:AddPermission")
///                     .effect("Allow")
///                     .resources(String.format("arn:aws:sns:%s:%s:%s", sns.region(),sns.account-id(),sns.name()))
///                     .sid("__default_statement_ID")
///                     .build(),
///                 GetPolicyDocumentStatementArgs.builder()
///                     .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                         .test("StringLike")
///                         .variable("SNS:Endpoint")
///                         .values(String.format("arn:aws:sqs:%s:%s:%s", sqs.region(),sqs.account-id(),sqs.name()))
///                         .build())
///                     .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                         .type("AWS")
///                         .identifiers("*")
///                         .build())
///                     .actions(
///                         "SNS:Subscribe",
///                         "SNS:Receive")
///                     .effect("Allow")
///                     .resources(String.format("arn:aws:sns:%s:%s:%s", sns.region(),sns.account-id(),sns.name()))
///                     .sid("__console_sub_0")
///                     .build())
///             .policyId("__default_policy_ID")
///             .build());
///
///         final var sqsQueuePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnEquals")
///                     .variable("aws:SourceArn")
///                     .values(String.format("arn:aws:sns:%s:%s:%s", sns.region(),sns.account-id(),sns.name()))
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("*")
///                     .build())
///                 .sid("example-sns-topic")
///                 .effect("Allow")
///                 .actions("SQS:SendMessage")
///                 .resources(String.format("arn:aws:sqs:%s:%s:%s", sqs.region(),sqs.account-id(),sqs.name()))
///                 .build())
///             .policyId(String.format("arn:aws:sqs:%s:%s:%s/SQSDefaultPolicy", sqs.region(),sqs.account-id(),sqs.name()))
///             .build());
///
///         var snsTopic = new Topic("snsTopic", TopicArgs.builder()
///             .name(sns.name())
///             .displayName(sns.display_name())
///             .policy(snsTopicPolicy.json())
///             .build());
///
///         var sqsQueue = new Queue("sqsQueue", QueueArgs.builder()
///             .name(sqs.name())
///             .policy(sqsQueuePolicy.json())
///             .build());
///
///         var snsTopicTopicSubscription = new TopicSubscription("snsTopicTopicSubscription", TopicSubscriptionArgs.builder()
///             .topic(snsTopic.arn())
///             .protocol("sqs")
///             .endpoint(sqsQueue.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   sns:
///     type: object
///     default:
///       account-id: '111111111111'
///       displayName: example
///       name: example-sns-topic
///       region: us-west-1
///       role-name: service/service
///   sqs:
///     type: object
///     default:
///       account-id: '222222222222'
///       name: example-sqs-queue
///       region: us-east-1
///       role-name: service/service
/// resources:
///   snsTopic:
///     type: aws:sns:Topic
///     name: sns_topic
///     properties:
///       name: ${sns["name"]}
///       displayName: ${sns["display_name"]}
///       policy: ${snsTopicPolicy.json}
///   sqsQueue:
///     type: aws:sqs:Queue
///     name: sqs_queue
///     properties:
///       name: ${sqs["name"]}
///       policy: ${sqsQueuePolicy.json}
///   snsTopicTopicSubscription:
///     type: aws:sns:TopicSubscription
///     name: sns_topic
///     properties:
///       topic: ${snsTopic.arn}
///       protocol: sqs
///       endpoint: ${sqsQueue.arn}
/// variables:
///   snsTopicPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: StringEquals
///                 variable: AWS:SourceOwner
///                 values:
///                   - ${sns["account-id"]}
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             actions:
///               - SNS:Subscribe
///               - SNS:SetTopicAttributes
///               - SNS:RemovePermission
///               - SNS:Publish
///               - SNS:ListSubscriptionsByTopic
///               - SNS:GetTopicAttributes
///               - SNS:DeleteTopic
///               - SNS:AddPermission
///             effect: Allow
///             resources:
///               - arn:aws:sns:${sns["region"]}:${sns["account-id"]}:${sns["name"]}
///             sid: __default_statement_ID
///           - conditions:
///               - test: StringLike
///                 variable: SNS:Endpoint
///                 values:
///                   - arn:aws:sqs:${sqs["region"]}:${sqs["account-id"]}:${sqs["name"]}
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             actions:
///               - SNS:Subscribe
///               - SNS:Receive
///             effect: Allow
///             resources:
///               - arn:aws:sns:${sns["region"]}:${sns["account-id"]}:${sns["name"]}
///             sid: __console_sub_0
///         policyId: __default_policy_ID
///   sqsQueuePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: ArnEquals
///                 variable: aws:SourceArn
///                 values:
///                   - arn:aws:sns:${sns["region"]}:${sns["account-id"]}:${sns["name"]}
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             sid: example-sns-topic
///             effect: Allow
///             actions:
///               - SQS:SendMessage
///             resources:
///               - arn:aws:sqs:${sqs["region"]}:${sqs["account-id"]}:${sqs["name"]}
///         policyId: arn:aws:sqs:${sqs["region"]}:${sqs["account-id"]}:${sqs["name"]}/SQSDefaultPolicy
/// ```
///
///
/// ### Example with Delivery Policy
///
/// This example demonstrates how to define a `deliveryPolicy` for an HTTPS subscription. Unlike the `aws.sns.Topic` resource, the `deliveryPolicy` for `aws.sns.TopicSubscription` should not be wrapped in an `"http"` object.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleWithDeliveryPolicy = new aws.sns.TopicSubscription("example_with_delivery_policy", {
///     topic: "arn:aws:sns:us-west-2:123456789012:my-topic",
///     protocol: "https",
///     endpoint: "https://example.com/endpoint",
///     rawMessageDelivery: true,
///     deliveryPolicy: `{
///   \\"healthyRetryPolicy\\": {
///     \\"minDelayTarget\\": 20,
///     \\"maxDelayTarget\\": 20,
///     \\"numRetries\\": 3,
///     \\"numMaxDelayRetries\\": 0,
///     \\"numNoDelayRetries\\": 0,
///     \\"numMinDelayRetries\\": 0,
///     \\"backoffFunction\\": \\"linear\\"
///   },
///   \\"sicklyRetryPolicy\\": null,
///   \\"throttlePolicy\\": null,
///   \\"requestPolicy\\": {
///     \\"headerContentType\\": \\"text/plain; application/json\\"
///   },
///   \\"guaranteed\\": false
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_with_delivery_policy = aws.sns.TopicSubscription("example_with_delivery_policy",
///     topic="arn:aws:sns:us-west-2:123456789012:my-topic",
///     protocol="https",
///     endpoint="https://example.com/endpoint",
///     raw_message_delivery=True,
///     delivery_policy="""{
///   \"healthyRetryPolicy\": {
///     \"minDelayTarget\": 20,
///     \"maxDelayTarget\": 20,
///     \"numRetries\": 3,
///     \"numMaxDelayRetries\": 0,
///     \"numNoDelayRetries\": 0,
///     \"numMinDelayRetries\": 0,
///     \"backoffFunction\": \"linear\"
///   },
///   \"sicklyRetryPolicy\": null,
///   \"throttlePolicy\": null,
///   \"requestPolicy\": {
///     \"headerContentType\": \"text/plain; application/json\"
///   },
///   \"guaranteed\": false
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWithDeliveryPolicy = new Aws.Sns.TopicSubscription("example_with_delivery_policy", new()
///     {
///         Topic = "arn:aws:sns:us-west-2:123456789012:my-topic",
///         Protocol = "https",
///         Endpoint = "https://example.com/endpoint",
///         RawMessageDelivery = true,
///         DeliveryPolicy = @"{
///   \""healthyRetryPolicy\"": {
///     \""minDelayTarget\"": 20,
///     \""maxDelayTarget\"": 20,
///     \""numRetries\"": 3,
///     \""numMaxDelayRetries\"": 0,
///     \""numNoDelayRetries\"": 0,
///     \""numMinDelayRetries\"": 0,
///     \""backoffFunction\"": \""linear\""
///   },
///   \""sicklyRetryPolicy\"": null,
///   \""throttlePolicy\"": null,
///   \""requestPolicy\"": {
///     \""headerContentType\"": \""text/plain; application/json\""
///   },
///   \""guaranteed\"": false
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sns.NewTopicSubscription(ctx, "example_with_delivery_policy", &sns.TopicSubscriptionArgs{
/// 			Topic:              pulumi.Any("arn:aws:sns:us-west-2:123456789012:my-topic"),
/// 			Protocol:           pulumi.String("https"),
/// 			Endpoint:           pulumi.String("https://example.com/endpoint"),
/// 			RawMessageDelivery: pulumi.Bool(true),
/// 			DeliveryPolicy: pulumi.String(`{
///   \"healthyRetryPolicy\": {
///     \"minDelayTarget\": 20,
///     \"maxDelayTarget\": 20,
///     \"numRetries\": 3,
///     \"numMaxDelayRetries\": 0,
///     \"numNoDelayRetries\": 0,
///     \"numMinDelayRetries\": 0,
///     \"backoffFunction\": \"linear\"
///   },
///   \"sicklyRetryPolicy\": null,
///   \"throttlePolicy\": null,
///   \"requestPolicy\": {
///     \"headerContentType\": \"text/plain; application/json\"
///   },
///   \"guaranteed\": false
/// }
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_sns_topicsubscription" "example_with_delivery_policy" {
///   topic                = "arn:aws:sns:us-west-2:123456789012:my-topic"
///   protocol             = "https"
///   endpoint             = "https://example.com/endpoint"
///   raw_message_delivery = true
///   delivery_policy      = "{\n  \\\"healthyRetryPolicy\\\": {\n    \\\"minDelayTarget\\\": 20,\n    \\\"maxDelayTarget\\\": 20,\n    \\\"numRetries\\\": 3,\n    \\\"numMaxDelayRetries\\\": 0,\n    \\\"numNoDelayRetries\\\": 0,\n    \\\"numMinDelayRetries\\\": 0,\n    \\\"backoffFunction\\\": \\\"linear\\\"\n  },\n  \\\"sicklyRetryPolicy\\\": null,\n  \\\"throttlePolicy\\\": null,\n  \\\"requestPolicy\\\": {\n    \\\"headerContentType\\\": \\\"text/plain; application/json\\\"\n  },\n  \\\"guaranteed\\\": false\n}\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.TopicSubscription;
/// import com.pulumi.aws.sns.TopicSubscriptionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampleWithDeliveryPolicy = new TopicSubscription("exampleWithDeliveryPolicy", TopicSubscriptionArgs.builder()
///             .topic("arn:aws:sns:us-west-2:123456789012:my-topic")
///             .protocol("https")
///             .endpoint("https://example.com/endpoint")
///             .rawMessageDelivery(true)
///             .deliveryPolicy("""
/// {
///   \"healthyRetryPolicy\": {
///     \"minDelayTarget\": 20,
///     \"maxDelayTarget\": 20,
///     \"numRetries\": 3,
///     \"numMaxDelayRetries\": 0,
///     \"numNoDelayRetries\": 0,
///     \"numMinDelayRetries\": 0,
///     \"backoffFunction\": \"linear\"
///   },
///   \"sicklyRetryPolicy\": null,
///   \"throttlePolicy\": null,
///   \"requestPolicy\": {
///     \"headerContentType\": \"text/plain; application/json\"
///   },
///   \"guaranteed\": false
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWithDeliveryPolicy:
///     type: aws:sns:TopicSubscription
///     name: example_with_delivery_policy
///     properties:
///       topic: arn:aws:sns:us-west-2:123456789012:my-topic
///       protocol: https
///       endpoint: https://example.com/endpoint
///       rawMessageDelivery: true
///       deliveryPolicy: |
///         {
///           \"healthyRetryPolicy\": {
///             \"minDelayTarget\": 20,
///             \"maxDelayTarget\": 20,
///             \"numRetries\": 3,
///             \"numMaxDelayRetries\": 0,
///             \"numNoDelayRetries\": 0,
///             \"numMinDelayRetries\": 0,
///             \"backoffFunction\": \"linear\"
///           },
///           \"sicklyRetryPolicy\": null,
///           \"throttlePolicy\": null,
///           \"requestPolicy\": {
///             \"headerContentType\": \"text/plain; application/json\"
///           },
///           \"guaranteed\": false
///         }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the SNS topic subscription.
///
///
/// Using `pulumi import`, import SNS Topic Subscriptions using the subscription `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sns/topicSubscription:TopicSubscription user_updates_sqs_target arn:aws:sns:us-west-2:123456789012:my-topic:8a21d249-4329-4871-acc6-7be709c6ea7f
/// ```
class TopicSubscription extends pulumi.CustomResource {
  /// ARN of the subscription.
  late final pulumi.Output<String> arn;
  /// Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is `1`.
  late final pulumi.Output<int?> confirmationTimeoutInMinutes;
  /// Whether the subscription confirmation request was authenticated.
  late final pulumi.Output<bool> confirmationWasAuthenticated;
  /// JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/DeliveryPolicies.html) for more details.
  late final pulumi.Output<String?> deliveryPolicy;
  /// Endpoint to send data to. The contents vary with the protocol. See details below.
  late final pulumi.Output<String> endpoint;
  /// Whether the endpoint is capable of [auto confirming subscription](http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.prepare) (e.g., PagerDuty). Default is `false`.
  late final pulumi.Output<bool?> endpointAutoConfirms;
  /// JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-filtering.html) for more details.
  late final pulumi.Output<String?> filterPolicy;
  /// Whether the `filterPolicy` applies to `MessageAttributes` (default) or `MessageBody`.
  late final pulumi.Output<String> filterPolicyScope;
  /// AWS account ID of the subscription's owner.
  late final pulumi.Output<String> ownerId;
  /// Whether the subscription has not been confirmed.
  late final pulumi.Output<bool> pendingConfirmation;
  /// Protocol to use. Valid values are: `sqs`, `sms`, `lambda`, `firehose`, and `application`. Protocols `email`, `email-json`, `http` and `https` are also valid but partially supported. See details below.
  late final pulumi.Output<String> protocol;
  /// Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is `false`.
  late final pulumi.Output<bool?> rawMessageDelivery;
  /// JSON String with the redrive policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-dead-letter-queues.html#how-messages-moved-into-dead-letter-queue) for more details.
  late final pulumi.Output<String?> redrivePolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// JSON String with the archived message replay policy that will be used in the subscription. Refer to the [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/message-archiving-and-replay-subscriber.html) for more details.
  late final pulumi.Output<String?> replayPolicy;
  /// ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Refer to [SNS docs](https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html).
  late final pulumi.Output<String?> subscriptionRoleArn;
  /// ARN of the SNS topic to subscribe to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> topic;

  /// Creates a new [TopicSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicSubscription]. {@macro pulumi_sns_topic_subscription_topic_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicSubscription(
    String name, {
    TopicSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/topicSubscription:TopicSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    confirmationTimeoutInMinutes = registerOutput<int?>('confirmationTimeoutInMinutes');
    confirmationWasAuthenticated = registerOutput<bool>('confirmationWasAuthenticated');
    deliveryPolicy = registerOutput<String?>('deliveryPolicy');
    endpoint = registerOutput<String>('endpoint');
    endpointAutoConfirms = registerOutput<bool?>('endpointAutoConfirms');
    filterPolicy = registerOutput<String?>('filterPolicy');
    filterPolicyScope = registerOutput<String>('filterPolicyScope');
    ownerId = registerOutput<String>('ownerId');
    pendingConfirmation = registerOutput<bool>('pendingConfirmation');
    protocol = registerOutput<String>('protocol');
    rawMessageDelivery = registerOutput<bool?>('rawMessageDelivery');
    redrivePolicy = registerOutput<String?>('redrivePolicy');
    region = registerOutput<String>('region');
    replayPolicy = registerOutput<String?>('replayPolicy');
    subscriptionRoleArn = registerOutput<String?>('subscriptionRoleArn');
    topic = registerOutput<String>('topic');
  }

  /// Gets an existing [TopicSubscription] resource's state with the given [name] and [id].
  static TopicSubscription get(
    String name,
    pulumi.Input<String> id, {
    TopicSubscriptionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TopicSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TopicSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/topicSubscription:TopicSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    confirmationTimeoutInMinutes = registerOutput<int?>('confirmationTimeoutInMinutes');
    confirmationWasAuthenticated = registerOutput<bool>('confirmationWasAuthenticated');
    deliveryPolicy = registerOutput<String?>('deliveryPolicy');
    endpoint = registerOutput<String>('endpoint');
    endpointAutoConfirms = registerOutput<bool?>('endpointAutoConfirms');
    filterPolicy = registerOutput<String?>('filterPolicy');
    filterPolicyScope = registerOutput<String>('filterPolicyScope');
    ownerId = registerOutput<String>('ownerId');
    pendingConfirmation = registerOutput<bool>('pendingConfirmation');
    protocol = registerOutput<String>('protocol');
    rawMessageDelivery = registerOutput<bool?>('rawMessageDelivery');
    redrivePolicy = registerOutput<String?>('redrivePolicy');
    region = registerOutput<String>('region');
    replayPolicy = registerOutput<String?>('replayPolicy');
    subscriptionRoleArn = registerOutput<String?>('subscriptionRoleArn');
    topic = registerOutput<String>('topic');
  }

  /// Creates a typed reference to an existing [TopicSubscription] resource.
  TopicSubscription.reference(String urn)
    : super(
        'aws:sns/topicSubscription:TopicSubscription',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    confirmationTimeoutInMinutes = registerOutput<int?>('confirmationTimeoutInMinutes');
    confirmationWasAuthenticated = registerOutput<bool>('confirmationWasAuthenticated');
    deliveryPolicy = registerOutput<String?>('deliveryPolicy');
    endpoint = registerOutput<String>('endpoint');
    endpointAutoConfirms = registerOutput<bool?>('endpointAutoConfirms');
    filterPolicy = registerOutput<String?>('filterPolicy');
    filterPolicyScope = registerOutput<String>('filterPolicyScope');
    ownerId = registerOutput<String>('ownerId');
    pendingConfirmation = registerOutput<bool>('pendingConfirmation');
    protocol = registerOutput<String>('protocol');
    rawMessageDelivery = registerOutput<bool?>('rawMessageDelivery');
    redrivePolicy = registerOutput<String?>('redrivePolicy');
    region = registerOutput<String>('region');
    replayPolicy = registerOutput<String?>('replayPolicy');
    subscriptionRoleArn = registerOutput<String?>('subscriptionRoleArn');
    topic = registerOutput<String>('topic');
  }
}
