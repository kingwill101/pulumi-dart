// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../provisioned_model_throughput_timeouts/provisioned_model_throughput_timeouts.dart';

/// The set of arguments for ProvisionedModelThroughput.
class ProvisionedModelThroughputArgs {
  /// Commitment duration requested for the Provisioned Throughput. For custom models, you can purchase on-demand Provisioned Throughput by omitting this argument. Valid values: `OneMonth`, `SixMonths`.
  final Input<String>? commitmentDuration;

  /// ARN of the model to associate with this Provisioned Throughput.
  final Input<String> modelArn;

  /// Number of model units to allocate. A model unit delivers a specific throughput level for the specified model.
  final Input<int> modelUnits;

  /// Unique name for this Provisioned Throughput.
  final Input<String> provisionedModelName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ProvisionedModelThroughputTimeouts>? timeouts;

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
      map['timeouts'] = Input.mapOptionalInputValue<
          ProvisionedModelThroughputTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProvisionedModelThroughputArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedModelThroughputArgs(
      commitmentDuration:
          Input.asOptionalInput<String>(map['commitmentDuration']),
      modelArn: Input.asInput<String>(map['modelArn']),
      modelUnits: Input.asInput<int>(map['modelUnits']),
      provisionedModelName: Input.asInput<String>(map['provisionedModelName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ProvisionedModelThroughputTimeouts>(
          map['timeouts']),
    );
  }
}
