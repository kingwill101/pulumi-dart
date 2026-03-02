// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AnomalyMonitor resources.
class AnomalyMonitorState {
  /// ARN of the anomaly monitor.
  final pulumi.Input<String>? arn;
  /// The dimensions to evaluate. Valid values: `SERVICE`.
  final pulumi.Input<String>? monitorDimension;
  /// A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  final pulumi.Input<String>? monitorSpecification;
  /// The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  final pulumi.Input<String>? monitorType;
  /// The name of the monitor.
  final pulumi.Input<String>? name;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AnomalyMonitorState].
  /// [arn] ARN of the anomaly monitor.
  /// [monitorDimension] The dimensions to evaluate. Valid values: `SERVICE`.
  /// [monitorSpecification] A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  /// [monitorType] The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  /// [name] The name of the monitor.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AnomalyMonitorState({
    this.arn,
    this.monitorDimension,
    this.monitorSpecification,
    this.monitorType,
    this.name,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'monitorDimension': ?monitorDimension,
      'monitorSpecification': ?monitorSpecification,
      'monitorType': ?monitorType,
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AnomalyMonitorState.fromMap(Map<String, dynamic> map) {
    return AnomalyMonitorState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      monitorDimension: map['monitorDimension'] == null ? null : ((map['monitorDimension'] as String).input()).input(),
      monitorSpecification: map['monitorSpecification'] == null ? null : ((map['monitorSpecification'] as String).input()).input(),
      monitorType: map['monitorType'] == null ? null : ((map['monitorType'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

