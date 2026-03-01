// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_model_throughput_timeouts.dart';

/// {@template pulumi_bedrock_provisioned_model_throughput_provisioned_model_throughput_args_doc}
/// The set of arguments for ProvisionedModelThroughput.
/// {@endtemplate}
/// {@macro pulumi_bedrock_provisioned_model_throughput_provisioned_model_throughput_args_doc}
class ProvisionedModelThroughputArgs {
  /// Commitment duration requested for the Provisioned Throughput. For custom models, you can purchase on-demand Provisioned Throughput by omitting this argument. Valid values: `OneMonth`, `SixMonths`.
  final pulumi.Input<String>? commitmentDuration;
  /// ARN of the model to associate with this Provisioned Throughput.
  final pulumi.Input<String> modelArn;
  /// Number of model units to allocate. A model unit delivers a specific throughput level for the specified model.
  final pulumi.Input<int> modelUnits;
  /// Unique name for this Provisioned Throughput.
  final pulumi.Input<String> provisionedModelName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ProvisionedModelThroughputTimeouts>? timeouts;

  /// Creates a new [ProvisionedModelThroughputArgs].
  /// [commitmentDuration] Commitment duration requested for the Provisioned Throughput. For custom models, you can purchase on-demand Provisioned Throughput by omitting this argument. Valid values: `OneMonth`, `SixMonths`.
  /// [modelArn] ARN of the model to associate with this Provisioned Throughput.
  /// [modelUnits] Number of model units to allocate. A model unit delivers a specific throughput level for the specified model.
  /// [provisionedModelName] Unique name for this Provisioned Throughput.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ProvisionedModelThroughputArgs({
    pulumi.Output<String>? commitmentDuration,
    required pulumi.Output<String> modelArn,
    required pulumi.Output<int> modelUnits,
    required pulumi.Output<String> provisionedModelName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ProvisionedModelThroughputTimeouts>? timeouts,
  }) :
      commitmentDuration = pulumi.Input.asOptionalInput<String>(commitmentDuration),
      modelArn = pulumi.Input.asInput<String>(modelArn),
      modelUnits = pulumi.Input.asInput<int>(modelUnits),
      provisionedModelName = pulumi.Input.asInput<String>(provisionedModelName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ProvisionedModelThroughputTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentDuration': ?commitmentDuration,
      'modelArn': modelArn,
      'modelUnits': modelUnits,
      'provisionedModelName': provisionedModelName,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProvisionedModelThroughputTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProvisionedModelThroughputArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedModelThroughputArgs(
      commitmentDuration: map['commitmentDuration'] == null ? null : pulumi.Output.create<String>(map['commitmentDuration'] as String),
      modelArn: pulumi.Output.create<String>(map['modelArn'] as String),
      modelUnits: pulumi.Output.create<int>(map['modelUnits'] as int),
      provisionedModelName: pulumi.Output.create<String>(map['provisionedModelName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ProvisionedModelThroughputTimeouts>(ProvisionedModelThroughputTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

