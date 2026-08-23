import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_policy_args.dart';
import 'topic_policy_state.dart';

/// Provides an SNS topic policy resource
///
/// &gt; **NOTE:** If a Principal is specified as just an AWS account ID rather than an ARN, AWS silently converts it to the ARN for the root user, causing future deployments to differ. To avoid this problem, just specify the full ARN, e.g. `arn:aws:iam::123456789012:root`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.sns.Topic("test", {name: "my-topic-with-policy"});
/// const snsTopicPolicy = aws.iam.getPolicyDocumentOutput({
///     policyId: "__default_policy_ID",
///     statements: [{
///         actions: [
///             "SNS:Subscribe",
///             "SNS:SetTopicAttributes",
///             "SNS:RemovePermission",
///             "SNS:Receive",
///             "SNS:Publish",
///             "SNS:ListSubscriptionsByTopic",
///             "SNS:GetTopicAttributes",
///             "SNS:DeleteTopic",
///             "SNS:AddPermission",
///         ],
///         conditions: [{
///             test: "StringEquals",
///             variable: "AWS:SourceOwner",
///             values: [account_id],
///         }],
///         effect: "Allow",
///         principals: [{
///             type: "AWS",
///             identifiers: ["*"],
///         }],
///         resources: [test.arn],
///         sid: "__default_statement_ID",
///     }],
/// });
/// const _default = new aws.sns.TopicPolicy("default", {
///     arn: test.arn,
///     policy: snsTopicPolicy.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.sns.Topic("test", name="my-topic-with-policy")
/// sns_topic_policy = aws.iam.get_policy_document_output(policy_id="__default_policy_ID",
///     statements=[{
///         "actions": [
///             "SNS:Subscribe",
///             "SNS:SetTopicAttributes",
///             "SNS:RemovePermission",
///             "SNS:Receive",
///             "SNS:Publish",
///             "SNS:ListSubscriptionsByTopic",
///             "SNS:GetTopicAttributes",
///             "SNS:DeleteTopic",
///             "SNS:AddPermission",
///         ],
///         "conditions": [{
///             "test": "StringEquals",
///             "variable": "AWS:SourceOwner",
///             "values": [account_id],
///         }],
///         "effect": "Allow",
///         "principals": [{
///             "type": "AWS",
///             "identifiers": ["*"],
///         }],
///         "resources": [test.arn],
///         "sid": "__default_statement_ID",
///     }])
/// default = aws.sns.TopicPolicy("default",
///     arn=test.arn,
///     policy=sns_topic_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Sns.Topic("test", new()
///     {
///         Name = "my-topic-with-policy",
///     });
///
///     var snsTopicPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         PolicyId = "__default_policy_ID",
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "SNS:Subscribe",
///                     "SNS:SetTopicAttributes",
///                     "SNS:RemovePermission",
///                     "SNS:Receive",
///                     "SNS:Publish",
///                     "SNS:ListSubscriptionsByTopic",
///                     "SNS:GetTopicAttributes",
///                     "SNS:DeleteTopic",
///                     "SNS:AddPermission",
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "AWS:SourceOwner",
///                         Values = new[]
///                         {
///                             account_id,
///                         },
///                     },
///                 },
///                 Effect = "Allow",
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
///                 Resources = new[]
///                 {
///                     test.Arn,
///                 },
///                 Sid = "__default_statement_ID",
///             },
///         },
///     });
///
///     var @default = new Aws.Sns.TopicPolicy("default", new()
///     {
///         Arn = test.Arn,
///         Policy = snsTopicPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := sns.NewTopic(ctx, "test", &sns.TopicArgs{
/// 			Name: pulumi.String("my-topic-with-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		snsTopicPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			PolicyId: pulumi.String("__default_policy_ID"),
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("SNS:Subscribe"),
/// 						pulumi.String("SNS:SetTopicAttributes"),
/// 						pulumi.String("SNS:RemovePermission"),
/// 						pulumi.String("SNS:Receive"),
/// 						pulumi.String("SNS:Publish"),
/// 						pulumi.String("SNS:ListSubscriptionsByTopic"),
/// 						pulumi.String("SNS:GetTopicAttributes"),
/// 						pulumi.String("SNS:DeleteTopic"),
/// 						pulumi.String("SNS:AddPermission"),
/// 					},
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("AWS:SourceOwner"),
/// 							Values: pulumi.StringArray{
/// 								account_id,
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						test.Arn,
/// 					},
/// 					Sid: pulumi.String("__default_statement_ID"),
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = sns.NewTopicPolicy(ctx, "default", &sns.TopicPolicyArgs{
/// 			Arn:    test.Arn,
/// 			Policy: snsTopicPolicy.Json(),
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
///   policy_id = "__default_policy_ID"
///   statements {
///     actions = ["SNS:Subscribe", "SNS:SetTopicAttributes", "SNS:RemovePermission", "SNS:Receive", "SNS:Publish", "SNS:ListSubscriptionsByTopic", "SNS:GetTopicAttributes", "SNS:DeleteTopic", "SNS:AddPermission"]
///     conditions {
///       test     = "StringEquals"
///       variable = "AWS:SourceOwner"
///       values   = [account-id]
///     }
///     effect = "Allow"
///     principals {
///       type        = "AWS"
///       identifiers = ["*"]
///     }
///     resources = [aws_sns_topic.test.arn]
///     sid       = "__default_statement_ID"
///   }
/// }
///
/// resource "aws_sns_topic" "test" {
///   name = "my-topic-with-policy"
/// }
/// resource "aws_sns_topicpolicy" "default" {
///   arn    = aws_sns_topic.test.arn
///   policy = data.aws_iam_getpolicydocument.snsTopicPolicy.json
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
/// import com.pulumi.aws.sns.TopicPolicy;
/// import com.pulumi.aws.sns.TopicPolicyArgs;
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
///         var test = new Topic("test", TopicArgs.builder()
///             .name("my-topic-with-policy")
///             .build());
///
///         final var snsTopicPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .policyId("__default_policy_ID")
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions(
///                     "SNS:Subscribe",
///                     "SNS:SetTopicAttributes",
///                     "SNS:RemovePermission",
///                     "SNS:Receive",
///                     "SNS:Publish",
///                     "SNS:ListSubscriptionsByTopic",
///                     "SNS:GetTopicAttributes",
///                     "SNS:DeleteTopic",
///                     "SNS:AddPermission")
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .variable("AWS:SourceOwner")
///                     .values(account_id)
///                     .build())
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("*")
///                     .build())
///                 .resources(test.arn())
///                 .sid("__default_statement_ID")
///                 .build())
///             .build());
///
///         var default_ = new TopicPolicy("default", TopicPolicyArgs.builder()
///             .arn(test.arn())
///             .policy(snsTopicPolicy.applyValue(_snsTopicPolicy -> _snsTopicPolicy.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:sns:Topic
///     properties:
///       name: my-topic-with-policy
///   default:
///     type: aws:sns:TopicPolicy
///     properties:
///       arn: ${test.arn}
///       policy: ${snsTopicPolicy.json}
/// variables:
///   snsTopicPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         policyId: __default_policy_ID
///         statements:
///           - actions:
///               - SNS:Subscribe
///               - SNS:SetTopicAttributes
///               - SNS:RemovePermission
///               - SNS:Receive
///               - SNS:Publish
///               - SNS:ListSubscriptionsByTopic
///               - SNS:GetTopicAttributes
///               - SNS:DeleteTopic
///               - SNS:AddPermission
///             conditions:
///               - test: StringEquals
///                 variable: AWS:SourceOwner
///                 values:
///                   - ${["account-id"]}
///             effect: Allow
///             principals:
///               - type: AWS
///                 identifiers:
///                   - '*'
///             resources:
///               - ${test.arn}
///             sid: __default_statement_ID
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SNS topic.
///
///
/// Using `pulumi import`, import SNS Topic Policy using the topic ARN. For example:
///
/// ```sh
/// $ pulumi import aws:sns/topicPolicy:TopicPolicy user_updates arn:aws:sns:us-west-2:123456789012:my-topic
/// ```
class TopicPolicy extends pulumi.CustomResource {
  /// The ARN of the SNS topic
  late final pulumi.Output<String> arn;
  /// The AWS Account ID of the SNS topic owner
  late final pulumi.Output<String> owner;
  /// The fully-formed AWS policy as JSON.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [TopicPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicPolicy]. {@macro pulumi_sns_topic_policy_topic_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicPolicy(
    String name, {
    TopicPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/topicPolicy:TopicPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    owner = registerOutput<String>('owner');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [TopicPolicy] resource's state with the given [name] and [id].
  static TopicPolicy get(
    String name,
    pulumi.Input<String> id, {
    TopicPolicyState? state,
  }) {
    return TopicPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TopicPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sns/topicPolicy:TopicPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    owner = registerOutput<String>('owner');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
