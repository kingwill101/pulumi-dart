import 'package:pulumi/pulumi.dart';
import '../provisioned_model_throughput_timeouts/provisioned_model_throughput_timeouts.dart';
import 'provisioned_model_throughput_args.dart';

/// Manages [Provisioned Throughput](https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html) for an Amazon Bedrock model.
///
/// ## Example Usage
///
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
class ProvisionedModelThroughput extends CustomResource {
  /// Commitment duration requested for the Provisioned Throughput. For custom models, you can purchase on-demand Provisioned Throughput by omitting this argument. Valid values: `OneMonth`, `SixMonths`.
  late final Output<String?> commitmentDuration;

  /// ARN of the model to associate with this Provisioned Throughput.
  late final Output<String> modelArn;

  /// Number of model units to allocate. A model unit delivers a specific throughput level for the specified model.
  late final Output<int> modelUnits;

  /// The ARN of the Provisioned Throughput.
  late final Output<String> provisionedModelArn;

  /// Unique name for this Provisioned Throughput.
  late final Output<String> provisionedModelName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ProvisionedModelThroughputTimeouts?> timeouts;

  ProvisionedModelThroughput(
    String name, {
    ProvisionedModelThroughputArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/provisionedModelThroughput:ProvisionedModelThroughput',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.commitmentDuration = registerOutput<String?>('commitmentDuration');
    this.modelArn = registerOutput<String>('modelArn');
    this.modelUnits = registerOutput<int>('modelUnits');
    this.provisionedModelArn = registerOutput<String>('provisionedModelArn');
    this.provisionedModelName = registerOutput<String>('provisionedModelName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<ProvisionedModelThroughputTimeouts?>('timeouts');
  }
}
