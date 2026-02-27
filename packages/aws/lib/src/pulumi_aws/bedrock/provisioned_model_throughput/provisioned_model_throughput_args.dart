// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../provisioned_model_throughput_timeouts/provisioned_model_throughput_timeouts.dart';

/// The set of arguments for ProvisionedModelThroughput.
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

  ProvisionedModelThroughputArgs({
    this.commitmentDuration,
    required this.modelArn,
    required this.modelUnits,
    required this.provisionedModelName,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commitmentDurationValue = commitmentDuration;
    if (commitmentDurationValue != null) {
      map['commitmentDuration'] = commitmentDurationValue;
    }
    map['modelArn'] = modelArn;
    map['modelUnits'] = modelUnits;
    map['provisionedModelName'] = provisionedModelName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ProvisionedModelThroughputTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProvisionedModelThroughputArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedModelThroughputArgs(
      commitmentDuration:
          pulumi.Input.asOptionalInput<String>(map['commitmentDuration']),
      modelArn: pulumi.Input.asInput<String>(map['modelArn']),
      modelUnits: pulumi.Input.asInput<int>(map['modelUnits']),
      provisionedModelName:
          pulumi.Input.asInput<String>(map['provisionedModelName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<ProvisionedModelThroughputTimeouts>(
              map['timeouts']),
    );
  }
}
