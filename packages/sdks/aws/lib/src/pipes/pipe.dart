import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_args.dart';
import 'pipe_enrichment_parameters.dart';
import 'pipe_log_configuration.dart';
import 'pipe_source_parameters.dart';
import 'pipe_state.dart';
import 'pipe_target_parameters.dart';

/// Resource for managing an AWS EventBridge Pipes Pipe.
///
/// You can find out more about EventBridge Pipes in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html).
///
/// EventBridge Pipes are very configurable, and may require IAM permissions to work correctly. More information on the configuration options and IAM permissions can be found in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html).
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
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
/// const main = aws.getCallerIdentity({});
/// const example = new aws.iam.Role("example", {assumeRolePolicy: JSON.stringify({
///     Version: "2012-10-17",
///     Statement: {
///         Effect: "Allow",
///         Action: "sts:AssumeRole",
///         Principal: {
///             Service: "pipes.amazonaws.com",
///         },
///         Condition: {
///             StringEquals: {
///                 "aws:SourceAccount": main.then(main => main.accountId),
///             },
///         },
///     },
/// })});
/// const sourceQueue = new aws.sqs.Queue("source", {});
/// const source = new aws.iam.RolePolicy("source", {
///     role: example.id,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: [
///                 "sqs:DeleteMessage",
///                 "sqs:GetQueueAttributes",
///                 "sqs:ReceiveMessage",
///             ],
///             Resource: [sourceQueue.arn],
///         }],
///     }),
/// });
/// const targetQueue = new aws.sqs.Queue("target", {});
/// const target = new aws.iam.RolePolicy("target", {
///     role: example.id,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: ["sqs:SendMessage"],
///             Resource: [targetQueue.arn],
///         }],
///     }),
/// });
/// const examplePipe = new aws.pipes.Pipe("example", {
///     name: "example-pipe",
///     roleArn: example.arn,
///     source: sourceQueue.arn,
///     target: targetQueue.arn,
/// }, {
///     dependsOn: [
///         source,
///         target,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// main = aws.get_caller_identity()
/// example = aws.iam.Role("example", assume_role_policy=json.dumps({
///     "Version": "2012-10-17",
///     "Statement": {
///         "Effect": "Allow",
///         "Action": "sts:AssumeRole",
///         "Principal": {
///             "Service": "pipes.amazonaws.com",
///         },
///         "Condition": {
///             "StringEquals": {
///                 "aws:SourceAccount": main.account_id,
///             },
///         },
///     },
/// }))
/// source_queue = aws.sqs.Queue("source")
/// source = aws.iam.RolePolicy("source",
///     role=example.id,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": [
///                 "sqs:DeleteMessage",
///                 "sqs:GetQueueAttributes",
///                 "sqs:ReceiveMessage",
///             ],
///             "Resource": [source_queue.arn],
///         }],
///     }))
/// target_queue = aws.sqs.Queue("target")
/// target = aws.iam.RolePolicy("target",
///     role=example.id,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": ["sqs:SendMessage"],
///             "Resource": [target_queue.arn],
///         }],
///     }))
/// example_pipe = aws.pipes.Pipe("example",
///     name="example-pipe",
///     role_arn=example.arn,
///     source=source_queue.arn,
///     target=target_queue.arn,
///     opts = pulumi.ResourceOptions(depends_on=[
///             source,
///             target,
///         ]))
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
///     var main = Aws.GetCallerIdentity.Invoke();
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new Dictionary<string, object?>
///             {
///                 ["Effect"] = "Allow",
///                 ["Action"] = "sts:AssumeRole",
///                 ["Principal"] = new Dictionary<string, object?>
///                 {
///                     ["Service"] = "pipes.amazonaws.com",
///                 },
///                 ["Condition"] = new Dictionary<string, object?>
///                 {
///                     ["StringEquals"] = new Dictionary<string, object?>
///                     {
///                         ["aws:SourceAccount"] = main.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                     },
///                 },
///             },
///         }),
///     });
///
///     var sourceQueue = new Aws.Sqs.Queue("source");
///
///     var source = new Aws.Iam.RolePolicy("source", new()
///     {
///         Role = example.Id,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "sqs:DeleteMessage",
///                         "sqs:GetQueueAttributes",
///                         "sqs:ReceiveMessage",
///                     },
///                     ["Resource"] = new[]
///                     {
///                         sourceQueue.Arn,
///                     },
///                 },
///             },
///         })),
///     });
///
///     var targetQueue = new Aws.Sqs.Queue("target");
///
///     var target = new Aws.Iam.RolePolicy("target", new()
///     {
///         Role = example.Id,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = new[]
///                     {
///                         "sqs:SendMessage",
///                     },
///                     ["Resource"] = new[]
///                     {
///                         targetQueue.Arn,
///                     },
///                 },
///             },
///         })),
///     });
///
///     var examplePipe = new Aws.Pipes.Pipe("example", new()
///     {
///         Name = "example-pipe",
///         RoleArn = example.Arn,
///         Source = sourceQueue.Arn,
///         Target = targetQueue.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             source,
///             target,
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pipes"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": map[string]interface{}{
/// 				"Effect": "Allow",
/// 				"Action": "sts:AssumeRole",
/// 				"Principal": map[string]interface{}{
/// 					"Service": "pipes.amazonaws.com",
/// 				},
/// 				"Condition": map[string]interface{}{
/// 					"StringEquals": map[string]interface{}{
/// 						"aws:SourceAccount": main.AccountId,
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sourceQueue, err := sqs.NewQueue(ctx, "source", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		source, err := iam.NewRolePolicy(ctx, "source", &iam.RolePolicyArgs{
/// 			Role: example.ID(),
/// 			Policy: sourceQueue.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Effect": "Allow",
/// 							"Action": []string{
/// 								"sqs:DeleteMessage",
/// 								"sqs:GetQueueAttributes",
/// 								"sqs:ReceiveMessage",
/// 							},
/// 							"Resource": []string{
/// 								arn,
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json1 := string(tmpJSON1)
/// 				return pulumi.String(json1), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetQueue, err := sqs.NewQueue(ctx, "target", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		target, err := iam.NewRolePolicy(ctx, "target", &iam.RolePolicyArgs{
/// 			Role: example.ID(),
/// 			Policy: targetQueue.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON2, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Effect": "Allow",
/// 							"Action": []string{
/// 								"sqs:SendMessage",
/// 							},
/// 							"Resource": []string{
/// 								arn,
/// 							},
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json2 := string(tmpJSON2)
/// 				return pulumi.String(json2), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pipes.NewPipe(ctx, "example", &pipes.PipeArgs{
/// 			Name:    pulumi.String("example-pipe"),
/// 			RoleArn: example.Arn,
/// 			Source:  sourceQueue.Arn,
/// 			Target:  targetQueue.Arn,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			source,
/// 			target,
/// 		}))
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.pipes.Pipe;
/// import com.pulumi.aws.pipes.PipeArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var main = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "pipes.amazonaws.com")
///                         )),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringEquals", jsonObject(
///                                 jsonProperty("aws:SourceAccount", main.accountId())
///                             ))
///                         ))
///                     ))
///                 )))
///             .build());
///
///         var sourceQueue = new Queue("sourceQueue");
///
///         var source = new RolePolicy("source", RolePolicyArgs.builder()
///             .role(example.id())
///             .policy(sourceQueue.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray(
///                             "sqs:DeleteMessage",
///                             "sqs:GetQueueAttributes",
///                             "sqs:ReceiveMessage"
///                         )),
///                         jsonProperty("Resource", jsonArray(_arn))
///                     )))
///                 ))))
///             .build());
///
///         var targetQueue = new Queue("targetQueue");
///
///         var target = new RolePolicy("target", RolePolicyArgs.builder()
///             .role(example.id())
///             .policy(targetQueue.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", jsonArray("sqs:SendMessage")),
///                         jsonProperty("Resource", jsonArray(_arn))
///                     )))
///                 ))))
///             .build());
///
///         var examplePipe = new Pipe("examplePipe", PipeArgs.builder()
///             .name("example-pipe")
///             .roleArn(example.arn())
///             .source(sourceQueue.arn())
///             .target(targetQueue.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     source,
///                     target)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             Effect: Allow
///             Action: sts:AssumeRole
///             Principal:
///               Service: pipes.amazonaws.com
///             Condition:
///               StringEquals:
///                 aws:SourceAccount: ${main.accountId}
///   source:
///     type: aws:iam:RolePolicy
///     properties:
///       role: ${example.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action:
///                 - sqs:DeleteMessage
///                 - sqs:GetQueueAttributes
///                 - sqs:ReceiveMessage
///               Resource:
///                 - ${sourceQueue.arn}
///   sourceQueue:
///     type: aws:sqs:Queue
///     name: source
///   target:
///     type: aws:iam:RolePolicy
///     properties:
///       role: ${example.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Action:
///                 - sqs:SendMessage
///               Resource:
///                 - ${targetQueue.arn}
///   targetQueue:
///     type: aws:sqs:Queue
///     name: target
///   examplePipe:
///     type: aws:pipes:Pipe
///     name: example
///     properties:
///       name: example-pipe
///       roleArn: ${example.arn}
///       source: ${sourceQueue.arn}
///       target: ${targetQueue.arn}
///     options:
///       dependsOn:
///         - ${source}
///         - ${target}
/// variables:
///   main:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ### Enrichment Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pipes.Pipe("example", {
///     name: "example-pipe",
///     roleArn: exampleAwsIamRole.arn,
///     source: source.arn,
///     target: target.arn,
///     enrichment: exampleAwsCloudwatchEventApiDestination.arn,
///     enrichmentParameters: {
///         httpParameters: {
///             pathParameterValues: "example-path-param",
///             headerParameters: {
///                 "example-header": "example-value",
///                 "second-example-header": "second-example-value",
///             },
///             queryStringParameters: {
///                 "example-query-string": "example-value",
///                 "second-example-query-string": "second-example-value",
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pipes.Pipe("example",
///     name="example-pipe",
///     role_arn=example_aws_iam_role["arn"],
///     source=source["arn"],
///     target=target["arn"],
///     enrichment=example_aws_cloudwatch_event_api_destination["arn"],
///     enrichment_parameters={
///         "http_parameters": {
///             "path_parameter_values": "example-path-param",
///             "header_parameters": {
///                 "example-header": "example-value",
///                 "second-example-header": "second-example-value",
///             },
///             "query_string_parameters": {
///                 "example-query-string": "example-value",
///                 "second-example-query-string": "second-example-value",
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pipes.Pipe("example", new()
///     {
///         Name = "example-pipe",
///         RoleArn = exampleAwsIamRole.Arn,
///         Source = source.Arn,
///         Target = target.Arn,
///         Enrichment = exampleAwsCloudwatchEventApiDestination.Arn,
///         EnrichmentParameters = new Aws.Pipes.Inputs.PipeEnrichmentParametersArgs
///         {
///             HttpParameters = new Aws.Pipes.Inputs.PipeEnrichmentParametersHttpParametersArgs
///             {
///                 PathParameterValues = "example-path-param",
///                 HeaderParameters =
///                 {
///                     { "example-header", "example-value" },
///                     { "second-example-header", "second-example-value" },
///                 },
///                 QueryStringParameters =
///                 {
///                     { "example-query-string", "example-value" },
///                     { "second-example-query-string", "second-example-value" },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pipes"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pipes.NewPipe(ctx, "example", &pipes.PipeArgs{
/// 			Name:       pulumi.String("example-pipe"),
/// 			RoleArn:    pulumi.Any(exampleAwsIamRole.Arn),
/// 			Source:     pulumi.Any(source.Arn),
/// 			Target:     pulumi.Any(target.Arn),
/// 			Enrichment: pulumi.Any(exampleAwsCloudwatchEventApiDestination.Arn),
/// 			EnrichmentParameters: &pipes.PipeEnrichmentParametersArgs{
/// 				HttpParameters: &pipes.PipeEnrichmentParametersHttpParametersArgs{
/// 					PathParameterValues: pulumi.String("example-path-param"),
/// 					HeaderParameters: pulumi.StringMap{
/// 						"example-header":        pulumi.String("example-value"),
/// 						"second-example-header": pulumi.String("second-example-value"),
/// 					},
/// 					QueryStringParameters: pulumi.StringMap{
/// 						"example-query-string":        pulumi.String("example-value"),
/// 						"second-example-query-string": pulumi.String("second-example-value"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.pipes.Pipe;
/// import com.pulumi.aws.pipes.PipeArgs;
/// import com.pulumi.aws.pipes.inputs.PipeEnrichmentParametersArgs;
/// import com.pulumi.aws.pipes.inputs.PipeEnrichmentParametersHttpParametersArgs;
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
///         var example = new Pipe("example", PipeArgs.builder()
///             .name("example-pipe")
///             .roleArn(exampleAwsIamRole.arn())
///             .source(source.arn())
///             .target(target.arn())
///             .enrichment(exampleAwsCloudwatchEventApiDestination.arn())
///             .enrichmentParameters(PipeEnrichmentParametersArgs.builder()
///                 .httpParameters(PipeEnrichmentParametersHttpParametersArgs.builder()
///                     .pathParameterValues("example-path-param")
///                     .headerParameters(Map.ofEntries(
///                         Map.entry("example-header", "example-value"),
///                         Map.entry("second-example-header", "second-example-value")
///                     ))
///                     .queryStringParameters(Map.ofEntries(
///                         Map.entry("example-query-string", "example-value"),
///                         Map.entry("second-example-query-string", "second-example-value")
///                     ))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pipes:Pipe
///     properties:
///       name: example-pipe
///       roleArn: ${exampleAwsIamRole.arn}
///       source: ${source.arn}
///       target: ${target.arn}
///       enrichment: ${exampleAwsCloudwatchEventApiDestination.arn}
///       enrichmentParameters:
///         httpParameters:
///           pathParameterValues: example-path-param
///           headerParameters:
///             example-header: example-value
///             second-example-header: second-example-value
///           queryStringParameters:
///             example-query-string: example-value
///             second-example-query-string: second-example-value
/// ```
///
///
/// ### Filter Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pipes.Pipe("example", {
///     name: "example-pipe",
///     roleArn: exampleAwsIamRole.arn,
///     source: source.arn,
///     target: target.arn,
///     sourceParameters: {
///         filterCriteria: {
///             filters: [{
///                 pattern: JSON.stringify({
///                     source: ["event-source"],
///                 }),
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.pipes.Pipe("example",
///     name="example-pipe",
///     role_arn=example_aws_iam_role["arn"],
///     source=source["arn"],
///     target=target["arn"],
///     source_parameters={
///         "filter_criteria": {
///             "filters": [{
///                 "pattern": json.dumps({
///                     "source": ["event-source"],
///                 }),
///             }],
///         },
///     })
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
///     var example = new Aws.Pipes.Pipe("example", new()
///     {
///         Name = "example-pipe",
///         RoleArn = exampleAwsIamRole.Arn,
///         Source = source.Arn,
///         Target = target.Arn,
///         SourceParameters = new Aws.Pipes.Inputs.PipeSourceParametersArgs
///         {
///             FilterCriteria = new Aws.Pipes.Inputs.PipeSourceParametersFilterCriteriaArgs
///             {
///                 Filters = new[]
///                 {
///                     new Aws.Pipes.Inputs.PipeSourceParametersFilterCriteriaFilterArgs
///                     {
///                         Pattern = JsonSerializer.Serialize(new Dictionary<string, object?>
///                         {
///                             ["source"] = new[]
///                             {
///                                 "event-source",
///                             },
///                         }),
///                     },
///                 },
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pipes"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"source": []string{
/// 				"event-source",
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = pipes.NewPipe(ctx, "example", &pipes.PipeArgs{
/// 			Name:    pulumi.String("example-pipe"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Source:  pulumi.Any(source.Arn),
/// 			Target:  pulumi.Any(target.Arn),
/// 			SourceParameters: &pipes.PipeSourceParametersArgs{
/// 				FilterCriteria: &pipes.PipeSourceParametersFilterCriteriaArgs{
/// 					Filters: pipes.PipeSourceParametersFilterCriteriaFilterArray{
/// 						&pipes.PipeSourceParametersFilterCriteriaFilterArgs{
/// 							Pattern: pulumi.String(json0),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.pipes.Pipe;
/// import com.pulumi.aws.pipes.PipeArgs;
/// import com.pulumi.aws.pipes.inputs.PipeSourceParametersArgs;
/// import com.pulumi.aws.pipes.inputs.PipeSourceParametersFilterCriteriaArgs;
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
///         var example = new Pipe("example", PipeArgs.builder()
///             .name("example-pipe")
///             .roleArn(exampleAwsIamRole.arn())
///             .source(source.arn())
///             .target(target.arn())
///             .sourceParameters(PipeSourceParametersArgs.builder()
///                 .filterCriteria(PipeSourceParametersFilterCriteriaArgs.builder()
///                     .filters(PipeSourceParametersFilterCriteriaFilterArgs.builder()
///                         .pattern(serializeJson(
///                             jsonObject(
///                                 jsonProperty("source", jsonArray("event-source"))
///                             )))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pipes:Pipe
///     properties:
///       name: example-pipe
///       roleArn: ${exampleAwsIamRole.arn}
///       source: ${source.arn}
///       target: ${target.arn}
///       sourceParameters:
///         filterCriteria:
///           filters:
///             - pattern:
///                 fn::toJSON:
///                   source:
///                     - event-source
/// ```
///
///
/// ### CloudWatch Logs Logging Configuration Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {name: "example-pipe-target"});
/// const examplePipe = new aws.pipes.Pipe("example", {
///     name: "example-pipe",
///     roleArn: exampleAwsIamRole.arn,
///     source: sourceAwsSqsQueue.arn,
///     target: targetAwsSqsQueue.arn,
///     logConfiguration: {
///         includeExecutionDatas: ["ALL"],
///         level: "INFO",
///         cloudwatchLogsLogDestination: {
///             logGroupArn: targetAwsCloudwatchLogGroup.arn,
///         },
///     },
/// }, {
///     dependsOn: [
///         source,
///         target,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example", name="example-pipe-target")
/// example_pipe = aws.pipes.Pipe("example",
///     name="example-pipe",
///     role_arn=example_aws_iam_role["arn"],
///     source=source_aws_sqs_queue["arn"],
///     target=target_aws_sqs_queue["arn"],
///     log_configuration={
///         "include_execution_datas": ["ALL"],
///         "level": "INFO",
///         "cloudwatch_logs_log_destination": {
///             "log_group_arn": target_aws_cloudwatch_log_group["arn"],
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             source,
///             target,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = "example-pipe-target",
///     });
///
///     var examplePipe = new Aws.Pipes.Pipe("example", new()
///     {
///         Name = "example-pipe",
///         RoleArn = exampleAwsIamRole.Arn,
///         Source = sourceAwsSqsQueue.Arn,
///         Target = targetAwsSqsQueue.Arn,
///         LogConfiguration = new Aws.Pipes.Inputs.PipeLogConfigurationArgs
///         {
///             IncludeExecutionDatas = new[]
///             {
///                 "ALL",
///             },
///             Level = "INFO",
///             CloudwatchLogsLogDestination = new Aws.Pipes.Inputs.PipeLogConfigurationCloudwatchLogsLogDestinationArgs
///             {
///                 LogGroupArn = targetAwsCloudwatchLogGroup.Arn,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             source,
///             target,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pipes"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: pulumi.String("example-pipe-target"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pipes.NewPipe(ctx, "example", &pipes.PipeArgs{
/// 			Name:    pulumi.String("example-pipe"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Source:  pulumi.Any(sourceAwsSqsQueue.Arn),
/// 			Target:  pulumi.Any(targetAwsSqsQueue.Arn),
/// 			LogConfiguration: &pipes.PipeLogConfigurationArgs{
/// 				IncludeExecutionDatas: pulumi.StringArray{
/// 					pulumi.String("ALL"),
/// 				},
/// 				Level: pulumi.String("INFO"),
/// 				CloudwatchLogsLogDestination: &pipes.PipeLogConfigurationCloudwatchLogsLogDestinationArgs{
/// 					LogGroupArn: pulumi.Any(targetAwsCloudwatchLogGroup.Arn),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			source,
/// 			target,
/// 		}))
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.pipes.Pipe;
/// import com.pulumi.aws.pipes.PipeArgs;
/// import com.pulumi.aws.pipes.inputs.PipeLogConfigurationArgs;
/// import com.pulumi.aws.pipes.inputs.PipeLogConfigurationCloudwatchLogsLogDestinationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name("example-pipe-target")
///             .build());
///
///         var examplePipe = new Pipe("examplePipe", PipeArgs.builder()
///             .name("example-pipe")
///             .roleArn(exampleAwsIamRole.arn())
///             .source(sourceAwsSqsQueue.arn())
///             .target(targetAwsSqsQueue.arn())
///             .logConfiguration(PipeLogConfigurationArgs.builder()
///                 .includeExecutionDatas("ALL")
///                 .level("INFO")
///                 .cloudwatchLogsLogDestination(PipeLogConfigurationCloudwatchLogsLogDestinationArgs.builder()
///                     .logGroupArn(targetAwsCloudwatchLogGroup.arn())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     source,
///                     target)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: example-pipe-target
///   examplePipe:
///     type: aws:pipes:Pipe
///     name: example
///     properties:
///       name: example-pipe
///       roleArn: ${exampleAwsIamRole.arn}
///       source: ${sourceAwsSqsQueue.arn}
///       target: ${targetAwsSqsQueue.arn}
///       logConfiguration:
///         includeExecutionDatas:
///           - ALL
///         level: INFO
///         cloudwatchLogsLogDestination:
///           logGroupArn: ${targetAwsCloudwatchLogGroup.arn}
///     options:
///       dependsOn:
///         - ${source}
///         - ${target}
/// ```
///
///
/// ### SQS Source and Target Configuration Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.pipes.Pipe("example", {
///     name: "example-pipe",
///     roleArn: exampleAwsIamRole.arn,
///     source: source.arn,
///     target: target.arn,
///     sourceParameters: {
///         sqsQueueParameters: {
///             batchSize: 1,
///             maximumBatchingWindowInSeconds: 2,
///         },
///     },
///     targetParameters: {
///         sqsQueueParameters: {
///             messageDeduplicationId: "example-dedupe",
///             messageGroupId: "example-group",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.pipes.Pipe("example",
///     name="example-pipe",
///     role_arn=example_aws_iam_role["arn"],
///     source=source["arn"],
///     target=target["arn"],
///     source_parameters={
///         "sqs_queue_parameters": {
///             "batch_size": 1,
///             "maximum_batching_window_in_seconds": 2,
///         },
///     },
///     target_parameters={
///         "sqs_queue_parameters": {
///             "message_deduplication_id": "example-dedupe",
///             "message_group_id": "example-group",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Pipes.Pipe("example", new()
///     {
///         Name = "example-pipe",
///         RoleArn = exampleAwsIamRole.Arn,
///         Source = source.Arn,
///         Target = target.Arn,
///         SourceParameters = new Aws.Pipes.Inputs.PipeSourceParametersArgs
///         {
///             SqsQueueParameters = new Aws.Pipes.Inputs.PipeSourceParametersSqsQueueParametersArgs
///             {
///                 BatchSize = 1,
///                 MaximumBatchingWindowInSeconds = 2,
///             },
///         },
///         TargetParameters = new Aws.Pipes.Inputs.PipeTargetParametersArgs
///         {
///             SqsQueueParameters = new Aws.Pipes.Inputs.PipeTargetParametersSqsQueueParametersArgs
///             {
///                 MessageDeduplicationId = "example-dedupe",
///                 MessageGroupId = "example-group",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pipes"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := pipes.NewPipe(ctx, "example", &pipes.PipeArgs{
/// 			Name:    pulumi.String("example-pipe"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			Source:  pulumi.Any(source.Arn),
/// 			Target:  pulumi.Any(target.Arn),
/// 			SourceParameters: &pipes.PipeSourceParametersArgs{
/// 				SqsQueueParameters: &pipes.PipeSourceParametersSqsQueueParametersArgs{
/// 					BatchSize:                      pulumi.Int(1),
/// 					MaximumBatchingWindowInSeconds: pulumi.Int(2),
/// 				},
/// 			},
/// 			TargetParameters: &pipes.PipeTargetParametersArgs{
/// 				SqsQueueParameters: &pipes.PipeTargetParametersSqsQueueParametersArgs{
/// 					MessageDeduplicationId: pulumi.String("example-dedupe"),
/// 					MessageGroupId:         pulumi.String("example-group"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.pipes.Pipe;
/// import com.pulumi.aws.pipes.PipeArgs;
/// import com.pulumi.aws.pipes.inputs.PipeSourceParametersArgs;
/// import com.pulumi.aws.pipes.inputs.PipeSourceParametersSqsQueueParametersArgs;
/// import com.pulumi.aws.pipes.inputs.PipeTargetParametersArgs;
/// import com.pulumi.aws.pipes.inputs.PipeTargetParametersSqsQueueParametersArgs;
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
///         var example = new Pipe("example", PipeArgs.builder()
///             .name("example-pipe")
///             .roleArn(exampleAwsIamRole.arn())
///             .source(source.arn())
///             .target(target.arn())
///             .sourceParameters(PipeSourceParametersArgs.builder()
///                 .sqsQueueParameters(PipeSourceParametersSqsQueueParametersArgs.builder()
///                     .batchSize(1)
///                     .maximumBatchingWindowInSeconds(2)
///                     .build())
///                 .build())
///             .targetParameters(PipeTargetParametersArgs.builder()
///                 .sqsQueueParameters(PipeTargetParametersSqsQueueParametersArgs.builder()
///                     .messageDeduplicationId("example-dedupe")
///                     .messageGroupId("example-group")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:pipes:Pipe
///     properties:
///       name: example-pipe
///       roleArn: ${exampleAwsIamRole.arn}
///       source: ${source.arn}
///       target: ${target.arn}
///       sourceParameters:
///         sqsQueueParameters:
///           batchSize: 1
///           maximumBatchingWindowInSeconds: 2
///       targetParameters:
///         sqsQueueParameters:
///           messageDeduplicationId: example-dedupe
///           messageGroupId: example-group
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import pipes using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:pipes/pipe:Pipe example my-pipe
/// ```
class Pipe extends pulumi.CustomResource {
  /// ARN of this pipe.
  late final pulumi.Output<String> arn;
  /// A description of the pipe. At most 512 characters.
  late final pulumi.Output<String?> description;
  /// The state the pipe should be in. One of: `RUNNING`, `STOPPED`.
  late final pulumi.Output<String?> desiredState;
  /// Enrichment resource of the pipe (typically an ARN). Read more about enrichment in the [User Guide](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html#pipes-enrichment).
  late final pulumi.Output<String?> enrichment;
  /// Parameters to configure enrichment for your pipe. Detailed below.
  late final pulumi.Output<PipeEnrichmentParameters?> enrichmentParameters;
  /// Identifier of the AWS KMS customer managed key for EventBridge to use, if you choose to use a customer managed key to encrypt pipe data. The identifier can be the key Amazon Resource Name (ARN), KeyId, key alias, or key alias ARN. If not set, EventBridge uses an AWS owned key to encrypt pipe data.
  late final pulumi.Output<String?> kmsKeyIdentifier;
  /// Logging configuration settings for the pipe. Detailed below.
  late final pulumi.Output<PipeLogConfiguration?> logConfiguration;
  /// Name of the pipe. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the role that allows the pipe to send data to the target.
  late final pulumi.Output<String> roleArn;
  /// Source resource of the pipe. This field typically requires an ARN (Amazon Resource Name). However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  late final pulumi.Output<String> source;
  /// Parameters to configure a source for the pipe. Detailed below.
  late final pulumi.Output<PipeSourceParameters> sourceParameters;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Target resource of the pipe (typically an ARN).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> target;
  /// Parameters to configure a target for your pipe. Detailed below.
  late final pulumi.Output<PipeTargetParameters?> targetParameters;

  /// Creates a new [Pipe].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipe]. {@macro pulumi_pipes_pipe_pipe_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipe(
    String name, {
    PipeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pipes/pipe:Pipe',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.desiredState = registerOutput<String?>('desiredState');
    this.enrichment = registerOutput<String?>('enrichment');
    this.enrichmentParameters = registerOutput<PipeEnrichmentParameters?>('enrichmentParameters');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.logConfiguration = registerOutput<PipeLogConfiguration?>('logConfiguration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.source = registerOutput<String>('source');
    this.sourceParameters = registerOutput<PipeSourceParameters>('sourceParameters');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.target = registerOutput<String>('target');
    this.targetParameters = registerOutput<PipeTargetParameters?>('targetParameters');
  }

  /// Gets an existing [Pipe] resource's state with the given [name] and [id].
  static Pipe get(
    String name,
    pulumi.Input<String> id, {
    PipeState? state,
  }) {
    return Pipe._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Pipe._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:pipes/pipe:Pipe',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.desiredState = registerOutput<String?>('desiredState');
    this.enrichment = registerOutput<String?>('enrichment');
    this.enrichmentParameters = registerOutput<PipeEnrichmentParameters?>('enrichmentParameters');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.logConfiguration = registerOutput<PipeLogConfiguration?>('logConfiguration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.source = registerOutput<String>('source');
    this.sourceParameters = registerOutput<PipeSourceParameters>('sourceParameters');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.target = registerOutput<String>('target');
    this.targetParameters = registerOutput<PipeTargetParameters?>('targetParameters');
  }
}
