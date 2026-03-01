// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_model_throughput_timeouts.dart';

/// Input properties used for looking up and filtering ProvisionedModelThroughput resources.
class ProvisionedModelThroughputState {
  /// Commitment duration requested for the Provisioned Throughput. For custom models, you can purchase on-demand Provisioned Throughput by omitting this argument. Valid values: `OneMonth`, `SixMonths`.
  final pulumi.Input<String>? commitmentDuration;
  /// ARN of the model to associate with this Provisioned Throughput.
  final pulumi.Input<String>? modelArn;
  /// Number of model units to allocate. A model unit delivers a specific throughput level for the specified model.
  final pulumi.Input<int>? modelUnits;
  /// The ARN of the Provisioned Throughput.
  final pulumi.Input<String>? provisionedModelArn;
  /// Unique name for this Provisioned Throughput.
  final pulumi.Input<String>? provisionedModelName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ProvisionedModelThroughputTimeouts>? timeouts;

  /// Creates a new [ProvisionedModelThroughputState].
  /// [commitmentDuration] Commitment duration requested for the Provisioned Throughput. For custom models, you can purchase on-demand Provisioned Throughput by omitting this argument. Valid values: `OneMonth`, `SixMonths`.
  /// [modelArn] ARN of the model to associate with this Provisioned Throughput.
  /// [modelUnits] Number of model units to allocate. A model unit delivers a specific throughput level for the specified model.
  /// [provisionedModelArn] The ARN of the Provisioned Throughput.
  /// [provisionedModelName] Unique name for this Provisioned Throughput.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ProvisionedModelThroughputState({
    pulumi.Output<String>? commitmentDuration,
    pulumi.Output<String>? modelArn,
    pulumi.Output<int>? modelUnits,
    pulumi.Output<String>? provisionedModelArn,
    pulumi.Output<String>? provisionedModelName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ProvisionedModelThroughputTimeouts>? timeouts,
  }) :
      commitmentDuration = pulumi.Input.asOptionalInput<String>(commitmentDuration),
      modelArn = pulumi.Input.asOptionalInput<String>(modelArn),
      modelUnits = pulumi.Input.asOptionalInput<int>(modelUnits),
      provisionedModelArn = pulumi.Input.asOptionalInput<String>(provisionedModelArn),
      provisionedModelName = pulumi.Input.asOptionalInput<String>(provisionedModelName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ProvisionedModelThroughputTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentDuration': ?commitmentDuration,
      'modelArn': ?modelArn,
      'modelUnits': ?modelUnits,
      'provisionedModelArn': ?provisionedModelArn,
      'provisionedModelName': ?provisionedModelName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ProvisionedModelThroughputTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ProvisionedModelThroughputState.fromMap(Map<String, dynamic> map) {
    return ProvisionedModelThroughputState(
      commitmentDuration: map['commitmentDuration'] == null ? null : pulumi.Output.create<String>(map['commitmentDuration'] as String),
      modelArn: map['modelArn'] == null ? null : pulumi.Output.create<String>(map['modelArn'] as String),
      modelUnits: map['modelUnits'] == null ? null : pulumi.Output.create<int>(map['modelUnits'] as int),
      provisionedModelArn: map['provisionedModelArn'] == null ? null : pulumi.Output.create<String>(map['provisionedModelArn'] as String),
      provisionedModelName: map['provisionedModelName'] == null ? null : pulumi.Output.create<String>(map['provisionedModelName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ProvisionedModelThroughputTimeouts>(ProvisionedModelThroughputTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

