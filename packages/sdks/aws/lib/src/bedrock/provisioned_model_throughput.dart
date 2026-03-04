import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_model_throughput_args.dart';
import 'provisioned_model_throughput_state.dart';
import 'provisioned_model_throughput_timeouts.dart';

/// Manages [Provisioned Throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html) for an Amazon Bedrock model.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.ProvisionedModelThroughput("example", {
///     provisionedModelName: "example-model",
///     modelArn: "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-v2",
///     commitmentDuration: "SixMonths",
///     modelUnits: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.ProvisionedModelThroughput("example",
///     provisioned_model_name="example-model",
///     model_arn="arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-v2",
///     commitment_duration="SixMonths",
///     model_units=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.ProvisionedModelThroughput("example", new()
///     {
///         ProvisionedModelName = "example-model",
///         ModelArn = "arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-v2",
///         CommitmentDuration = "SixMonths",
///         ModelUnits = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewProvisionedModelThroughput(ctx, "example", &bedrock.ProvisionedModelThroughputArgs{
/// 			ProvisionedModelName: pulumi.String("example-model"),
/// 			ModelArn:             pulumi.String("arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-v2"),
/// 			CommitmentDuration:   pulumi.String("SixMonths"),
/// 			ModelUnits:           pulumi.Int(1),
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
/// import com.pulumi.aws.bedrock.ProvisionedModelThroughput;
/// import com.pulumi.aws.bedrock.ProvisionedModelThroughputArgs;
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
///         var example = new ProvisionedModelThroughput("example", ProvisionedModelThroughputArgs.builder()
///             .provisionedModelName("example-model")
///             .modelArn("arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-v2")
///             .commitmentDuration("SixMonths")
///             .modelUnits(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:ProvisionedModelThroughput
///     properties:
///       provisionedModelName: example-model
///       modelArn: arn:aws:bedrock:us-east-1::foundation-model/anthropic.claude-v2
///       commitmentDuration: SixMonths
///       modelUnits: 1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Bedrock provisioned model throughput.
///
///
/// Using `pulumi import`, import Provisioned Throughput using the `provisioned_model_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/provisionedModelThroughput:ProvisionedModelThroughput example arn:aws:bedrock:us-west-2:123456789012:provisioned-model/1y5n57gh5y2e
/// ```
class ProvisionedModelThroughput extends pulumi.CustomResource {
  /// Commitment duration requested for the Provisioned Throughput. For custom models, you can purchase on-demand Provisioned Throughput by omitting this argument. Valid values: `OneMonth`, `SixMonths`.
  late final pulumi.Output<String?> commitmentDuration;

  /// ARN of the model to associate with this Provisioned Throughput.
  late final pulumi.Output<String> modelArn;

  /// Number of model units to allocate. A model unit delivers a specific throughput level for the specified model.
  late final pulumi.Output<int> modelUnits;

  /// The ARN of the Provisioned Throughput.
  late final pulumi.Output<String> provisionedModelArn;

  /// Unique name for this Provisioned Throughput.
  late final pulumi.Output<String> provisionedModelName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ProvisionedModelThroughputTimeouts?> timeouts;

  /// Creates a new [ProvisionedModelThroughput].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisionedModelThroughput]. {@macro pulumi_bedrock_provisioned_model_throughput_provisioned_model_throughput_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisionedModelThroughput(
    String name, {
    ProvisionedModelThroughputArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/provisionedModelThroughput:ProvisionedModelThroughput',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    commitmentDuration = registerOutput<String?>('commitmentDuration');
    modelArn = registerOutput<String>('modelArn');
    modelUnits = registerOutput<int>('modelUnits');
    provisionedModelArn = registerOutput<String>('provisionedModelArn');
    provisionedModelName = registerOutput<String>('provisionedModelName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ProvisionedModelThroughputTimeouts?>('timeouts');
  }

  /// Gets an existing [ProvisionedModelThroughput] resource's state with the given [name] and [id].
  static ProvisionedModelThroughput get(
    String name,
    pulumi.Input<String> id, {
    ProvisionedModelThroughputState? state,
  }) {
    return ProvisionedModelThroughput._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProvisionedModelThroughput._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/provisionedModelThroughput:ProvisionedModelThroughput',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    commitmentDuration = registerOutput<String?>('commitmentDuration');
    modelArn = registerOutput<String>('modelArn');
    modelUnits = registerOutput<int>('modelUnits');
    provisionedModelArn = registerOutput<String>('provisionedModelArn');
    provisionedModelName = registerOutput<String>('provisionedModelName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ProvisionedModelThroughputTimeouts?>('timeouts');
  }
}
