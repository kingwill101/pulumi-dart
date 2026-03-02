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
    this.commitmentDuration,
    this.modelArn,
    this.modelUnits,
    this.provisionedModelArn,
    this.provisionedModelName,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

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
      commitmentDuration: map['commitmentDuration'] == null ? null : ((map['commitmentDuration'] as String).input()).input(),
      modelArn: map['modelArn'] == null ? null : ((map['modelArn'] as String).input()).input(),
      modelUnits: map['modelUnits'] == null ? null : ((map['modelUnits'] as int).input()).input(),
      provisionedModelArn: map['provisionedModelArn'] == null ? null : ((map['provisionedModelArn'] as String).input()).input(),
      provisionedModelName: map['provisionedModelName'] == null ? null : ((map['provisionedModelName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((ProvisionedModelThroughputTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

