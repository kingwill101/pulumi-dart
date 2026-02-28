import 'package:pulumi/pulumi.dart' as pulumi;
import 'queue_policy_args.dart';

/// Allows you to set a policy of an SQS Queue while referencing the ARN of the queue within the policy.
///
/// !> AWS will hang indefinitely when creating or updating an `aws.sqs.Queue` with an associated policy if `Version = "2012-10-17"` is not explicitly set in the policy. See below for an example of how to avoid this issue.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const q = new aws.sqs.Queue("q", {name: "examplequeue"});
/// const test = q.arn.apply(arn => aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         sid: "First",
///         effect: "Allow",
///         principals: [{
///             type: "*",
///             identifiers: ["*"],
///         }],
///         actions: ["sqs:SendMessage"],
///         resources: [arn],
///         conditions: [{
///             test: "ArnEquals",
///             variable: "aws:SourceArn",
///             values: [example.arn],
///         }],
///     }],
/// }));
/// const testQueuePolicy = new aws.sqs.QueuePolicy("test", {
///     queueUrl: q.id,
///     policy: test.apply(test => test.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// q = aws.sqs.Queue("q", name="examplequeue")
/// test = q.arn.apply(lambda arn: aws.iam.get_policy_document_output(statements=[{
///     "sid": "First",
///     "effect": "Allow",
///     "principals": [{
///         "type": "*",
///         "identifiers": ["*"],
///     }],
///     "actions": ["sqs:SendMessage"],
///     "resources": [arn],
///     "conditions": [{
///         "test": "ArnEquals",
///         "variable": "aws:SourceArn",
///         "values": [example["arn"]],
///     }],
/// }]))
/// test_queue_policy = aws.sqs.QueuePolicy("test",
///     queue_url=q.id,
///     policy=test.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var q = new Aws.Sqs.Queue("q", new()
///     {
///         Name = "examplequeue",
///     });
///
///     var test = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
///             {
///                 Sid = "First",
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
///                     {
///                         Type = "*",
///                         Identifiers = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sqs:SendMessage",
///                 },
///                 Resources = new[]
///                 {
///                     q.Arn,
///                 },
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionArgs
///                     {
///                         Test = "ArnEquals",
///                         Variable = "aws:SourceArn",
///                         Values = new[]
///                         {
///                             example.Arn,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var testQueuePolicy = new Aws.Sqs.QueuePolicy("test", new()
///     {
///         QueueUrl = q.Id,
///         Policy = test.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// q, err := sqs.NewQueue(ctx, "q", &sqs.QueueArgs{
/// Name: pulumi.String("examplequeue"),
/// })
/// if err != nil {
/// return err
/// }
/// test := q.Arn.ApplyT(func(arn string) (iam.GetPolicyDocumentResult, error) {
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Sid: pulumi.StringRef(pulumi.String(pulumi.StringRef("First"))),
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "*",
/// Identifiers: []string{
/// "*",
/// },
/// },
/// },
/// Actions: []string{
/// "sqs:SendMessage",
/// },
/// Resources: []string{
/// arn,
/// },
/// Conditions: []iam.GetPolicyDocumentStatementCondition{
/// {
/// Test: "ArnEquals",
/// Variable: "aws:SourceArn",
/// Values: interface{}{
/// example.Arn,
/// },
/// },
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = sqs.NewQueuePolicy(ctx, "test", &sqs.QueuePolicyArgs{
/// QueueUrl: q.ID(),
/// Policy: pulumi.String(test.ApplyT(func(test iam.GetPolicyDocumentResult) (*string, error) {
/// return &test.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.sqs.QueuePolicy;
/// import com.pulumi.aws.sqs.QueuePolicyArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var q = new Queue("q", QueueArgs.builder()
///             .name("examplequeue")
///             .build());
///
///         final var test = q.arn().applyValue(_arn -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .sid("First")
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("*")
///                     .identifiers("*")
///                     .build())
///                 .actions("sqs:SendMessage")
///                 .resources(_arn)
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("ArnEquals")
///                     .variable("aws:SourceArn")
///                     .values(example.arn())
///                     .build())
///                 .build())
///             .build()));
///
///         var testQueuePolicy = new QueuePolicy("testQueuePolicy", QueuePolicyArgs.builder()
///             .queueUrl(q.id())
///             .policy(test.applyValue(_test -> _test.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   q:
///     type: aws:sqs:Queue
///     properties:
///       name: examplequeue
///   testQueuePolicy:
///     type: aws:sqs:QueuePolicy
///     name: test
///     properties:
///       queueUrl: ${q.id}
///       policy: ${test.json}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - sid: First
///             effect: Allow
///             principals:
///               - type: '*'
///                 identifiers:
///                   - '*'
///             actions:
///               - sqs:SendMessage
///             resources:
///               - ${q.arn}
///             conditions:
///               - test: ArnEquals
///                 variable: aws:SourceArn
///                 values:
///                   - ${example.arn}
/// ```
///
///
/// ### Timeout Problems Creating/Updating
///
/// If `Version = "2012-10-17"` is not explicitly set in the policy, AWS may hang, causing the AWS provider to time out. To avoid this, make sure to include `Version` as shown in the example below.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "brodobaggins"});
/// const exampleQueue = new aws.sqs.Queue("example", {name: "be-giant"});
/// const exampleQueuePolicy = new aws.sqs.QueuePolicy("example", {
///     queueUrl: exampleQueue.id,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "Cejuwdam",
///             Effect: "Allow",
///             Principal: {
///                 Service: "s3.amazonaws.com",
///             },
///             Action: "SQS:SendMessage",
///             Resource: exampleQueue.arn,
///             Condition: {
///                 ArnLike: {
///                     "aws:SourceArn": example.arn,
///                 },
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="brodobaggins")
/// example_queue = aws.sqs.Queue("example", name="be-giant")
/// example_queue_policy = aws.sqs.QueuePolicy("example",
///     queue_url=example_queue.id,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "Cejuwdam",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "s3.amazonaws.com",
///             },
///             "Action": "SQS:SendMessage",
///             "Resource": example_queue.arn,
///             "Condition": {
///                 "ArnLike": {
///                     "aws:SourceArn": example.arn,
///                 },
///             },
///         }],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "brodobaggins",
///     });
///
///     var exampleQueue = new Aws.Sqs.Queue("example", new()
///     {
///         Name = "be-giant",
///     });
///
///     var exampleQueuePolicy = new Aws.Sqs.QueuePolicy("example", new()
///     {
///         QueueUrl = exampleQueue.Id,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "Cejuwdam",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "s3.amazonaws.com",
///                     },
///                     ["Action"] = "SQS:SendMessage",
///                     ["Resource"] = exampleQueue.Arn,
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["ArnLike"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceArn"] = example.Arn,
///                         },
///                     },
///                 },
///             },
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("brodobaggins"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleQueue, err := sqs.NewQueue(ctx, "example", &sqs.QueueArgs{
/// 			Name: pulumi.String("be-giant"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sqs.NewQueuePolicy(ctx, "example", &sqs.QueuePolicyArgs{
/// 			QueueUrl: exampleQueue.ID(),
/// 			Policy: pulumi.All(exampleQueue.Arn, example.Arn).ApplyT(func(_args []interface{}) (string, error) {
/// 				exampleQueueArn := _args[0].(string)
/// 				exampleArn := _args[1].(string)
/// 				var _zero string
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Sid":    "Cejuwdam",
/// 							"Effect": "Allow",
/// 							"Principal": map[string]interface{}{
/// 								"Service": "s3.amazonaws.com",
/// 							},
/// 							"Action":   "SQS:SendMessage",
/// 							"Resource": exampleQueueArn,
/// 							"Condition": map[string]interface{}{
/// 								"ArnLike": map[string]interface{}{
/// 									"aws:SourceArn": exampleArn,
/// 								},
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return json0, nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.sqs.QueuePolicy;
/// import com.pulumi.aws.sqs.QueuePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("brodobaggins")
///             .build());
///
///         var exampleQueue = new Queue("exampleQueue", QueueArgs.builder()
///             .name("be-giant")
///             .build());
///
///         var exampleQueuePolicy = new QueuePolicy("exampleQueuePolicy", QueuePolicyArgs.builder()
///             .queueUrl(exampleQueue.id())
///             .policy(Output.tuple(exampleQueue.arn(), example.arn()).applyValue(values -> {
///                 var exampleQueueArn = values.t1;
///                 var exampleArn = values.t2;
///                 return serializeJson(
///                     jsonObject(
///                         jsonProperty("Version", "2012-10-17"),
///                         jsonProperty("Statement", jsonArray(jsonObject(
///                             jsonProperty("Sid", "Cejuwdam"),
///                             jsonProperty("Effect", "Allow"),
///                             jsonProperty("Principal", jsonObject(
///                                 jsonProperty("Service", "s3.amazonaws.com")
///                             )),
///                             jsonProperty("Action", "SQS:SendMessage"),
///                             jsonProperty("Resource", exampleQueueArn),
///                             jsonProperty("Condition", jsonObject(
///                                 jsonProperty("ArnLike", jsonObject(
///                                     jsonProperty("aws:SourceArn", exampleArn)
///                                 ))
///                             ))
///                         )))
///                     ));
///             }))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: brodobaggins
///   exampleQueue:
///     type: aws:sqs:Queue
///     name: example
///     properties:
///       name: be-giant
///   exampleQueuePolicy:
///     type: aws:sqs:QueuePolicy
///     name: example
///     properties:
///       queueUrl: ${exampleQueue.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: Cejuwdam
///               Effect: Allow
///               Principal:
///                 Service: s3.amazonaws.com
///               Action: SQS:SendMessage
///               Resource: ${exampleQueue.arn}
///               Condition:
///                 ArnLike:
///                   aws:SourceArn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SQS Queue Policies using the queue URL. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/queuePolicy:QueuePolicy test https://queue.amazonaws.com/123456789012/myqueue
/// ```
class QueuePolicy extends pulumi.CustomResource {
  /// JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Ensure that `Version = "2012-10-17"` is set in the policy or AWS may hang in creating the queue.
  late final pulumi.Output<String> policy;

  /// URL of the SQS Queue to which to attach the policy.
  late final pulumi.Output<String> queueUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [QueuePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QueuePolicy]. {@macro pulumi_sqs_queue_policy_queue_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QueuePolicy(
    String name, {
    QueuePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sqs/queuePolicy:QueuePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policy = registerOutput<String>('policy');
    this.queueUrl = registerOutput<String>('queueUrl');
    this.region = registerOutput<String>('region');
  }
}
