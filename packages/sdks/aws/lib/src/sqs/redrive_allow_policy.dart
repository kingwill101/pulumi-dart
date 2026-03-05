import 'package:pulumi/pulumi.dart' as pulumi;
import 'redrive_allow_policy_args.dart';
import 'redrive_allow_policy_state.dart';

/// Provides a SQS Queue Redrive Allow Policy resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sqs.Queue("example", {name: "examplequeue"});
/// const src = new aws.sqs.Queue("src", {
///     name: "srcqueue",
///     redrivePolicy: pulumi.jsonStringify({
///         deadLetterTargetArn: example.arn,
///         maxReceiveCount: 4,
///     }),
/// });
/// const exampleRedriveAllowPolicy = new aws.sqs.RedriveAllowPolicy("example", {
///     queueUrl: example.id,
///     redriveAllowPolicy: pulumi.jsonStringify({
///         redrivePermission: "byQueue",
///         sourceQueueArns: [src.arn],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.sqs.Queue("example", name="examplequeue")
/// src = aws.sqs.Queue("src",
///     name="srcqueue",
///     redrive_policy=pulumi.Output.json_dumps({
///         "deadLetterTargetArn": example.arn,
///         "maxReceiveCount": 4,
///     }))
/// example_redrive_allow_policy = aws.sqs.RedriveAllowPolicy("example",
///     queue_url=example.id,
///     redrive_allow_policy=pulumi.Output.json_dumps({
///         "redrivePermission": "byQueue",
///         "sourceQueueArns": [src.arn],
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
///     var example = new Aws.Sqs.Queue("example", new()
///     {
///         Name = "examplequeue",
///     });
///
///     var src = new Aws.Sqs.Queue("src", new()
///     {
///         Name = "srcqueue",
///         RedrivePolicy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["deadLetterTargetArn"] = example.Arn,
///             ["maxReceiveCount"] = 4,
///         })),
///     });
///
///     var exampleRedriveAllowPolicy = new Aws.Sqs.RedriveAllowPolicy("example", new()
///     {
///         QueueUrl = example.Id,
///         RedriveAllowPolicyName = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["redrivePermission"] = "byQueue",
///             ["sourceQueueArns"] = new[]
///             {
///                 src.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sqs.NewQueue(ctx, "example", &sqs.QueueArgs{
/// 			Name: pulumi.String("examplequeue"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		src, err := sqs.NewQueue(ctx, "src", &sqs.QueueArgs{
/// 			Name: pulumi.String("srcqueue"),
/// 			RedrivePolicy: example.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"deadLetterTargetArn": arn,
/// 					"maxReceiveCount":     4,
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sqs.NewRedriveAllowPolicy(ctx, "example", &sqs.RedriveAllowPolicyArgs{
/// 			QueueUrl: example.ID(),
/// 			RedriveAllowPolicy: src.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 					"redrivePermission": "byQueue",
/// 					"sourceQueueArns": []string{
/// 						arn,
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.sqs.QueueArgs;
/// import com.pulumi.aws.sqs.RedriveAllowPolicy;
/// import com.pulumi.aws.sqs.RedriveAllowPolicyArgs;
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
///         var example = new Queue("example", QueueArgs.builder()
///             .name("examplequeue")
///             .build());
///
///         var src = new Queue("src", QueueArgs.builder()
///             .name("srcqueue")
///             .redrivePolicy(example.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("deadLetterTargetArn", _arn),
///                     jsonProperty("maxReceiveCount", 4)
///                 ))))
///             .build());
///
///         var exampleRedriveAllowPolicy = new RedriveAllowPolicy("exampleRedriveAllowPolicy", RedriveAllowPolicyArgs.builder()
///             .queueUrl(example.id())
///             .redriveAllowPolicy(src.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("redrivePermission", "byQueue"),
///                     jsonProperty("sourceQueueArns", jsonArray(_arn))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   src:
///     type: aws:sqs:Queue
///     properties:
///       name: srcqueue
///       redrivePolicy:
///         fn::toJSON:
///           deadLetterTargetArn: ${example.arn}
///           maxReceiveCount: 4
///   example:
///     type: aws:sqs:Queue
///     properties:
///       name: examplequeue
///   exampleRedriveAllowPolicy:
///     type: aws:sqs:RedriveAllowPolicy
///     name: example
///     properties:
///       queueUrl: ${example.id}
///       redriveAllowPolicy:
///         fn::toJSON:
///           redrivePermission: byQueue
///           sourceQueueArns:
///             - ${src.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SQS Queue Redrive Allow Policies using the queue URL. For example:
///
/// ```sh
/// $ pulumi import aws:sqs/redriveAllowPolicy:RedriveAllowPolicy test https://queue.amazonaws.com/123456789012/myqueue
/// ```
class RedriveAllowPolicy extends pulumi.CustomResource {
  /// The URL of the SQS Queue to which to attach the policy
  late final pulumi.Output<String> queueUrl;
  /// The JSON redrive allow policy for the SQS queue. Learn more in the [Amazon SQS dead-letter queues documentation](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html).
  late final pulumi.Output<String> redriveAllowPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [RedriveAllowPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RedriveAllowPolicy]. {@macro pulumi_sqs_redrive_allow_policy_redrive_allow_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RedriveAllowPolicy(
    String name, {
    RedriveAllowPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sqs/redriveAllowPolicy:RedriveAllowPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    queueUrl = registerOutput<String>('queueUrl');
    redriveAllowPolicy = registerOutput<String>('redriveAllowPolicy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [RedriveAllowPolicy] resource's state with the given [name] and [id].
  static RedriveAllowPolicy get(
    String name,
    pulumi.Input<String> id, {
    RedriveAllowPolicyState? state,
  }) {
    return RedriveAllowPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RedriveAllowPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sqs/redriveAllowPolicy:RedriveAllowPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    queueUrl = registerOutput<String>('queueUrl');
    redriveAllowPolicy = registerOutput<String>('redriveAllowPolicy');
    region = registerOutput<String>('region');
  }
}
