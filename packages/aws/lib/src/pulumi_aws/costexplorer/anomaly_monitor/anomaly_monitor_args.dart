// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AnomalyMonitor.
class AnomalyMonitorArgs {
  /// The dimensions to evaluate. Valid values: `SERVICE`.
  final Input<String>? monitorDimension;

  /// A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  final Input<String>? monitorSpecification;

  /// The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  final Input<String> monitorType;

  /// The name of the monitor.
  final Input<String>? name;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  AnomalyMonitorArgs({
    this.monitorDimension,
    this.monitorSpecification,
    required this.monitorType,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final monitorDimensionValue = monitorDimension;
    if (monitorDimensionValue != null) {
      map['monitorDimension'] = monitorDimensionValue;
    }
    final monitorSpecificationValue = monitorSpecification;
    if (monitorSpecificationValue != null) {
      map['monitorSpecification'] = monitorSpecificationValue;
    }
    map['monitorType'] = monitorType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AnomalyMonitorArgs.fromMap(Map<String, dynamic> map) {
    return AnomalyMonitorArgs(
      monitorDimension: Input.asOptionalInput<String>(map['monitorDimension']),
      monitorSpecification:
          Input.asOptionalInput<String>(map['monitorSpecification']),
      monitorType: Input.asInput<String>(map['monitorType']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
