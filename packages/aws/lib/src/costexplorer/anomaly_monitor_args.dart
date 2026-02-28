// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costexplorer_anomaly_monitor_anomaly_monitor_args_doc}
/// The set of arguments for AnomalyMonitor.
/// {@endtemplate}
/// {@macro pulumi_costexplorer_anomaly_monitor_anomaly_monitor_args_doc}
class AnomalyMonitorArgs {
  /// The dimensions to evaluate. Valid values: `SERVICE`.
  final pulumi.Input<String>? monitorDimension;

  /// A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  final pulumi.Input<String>? monitorSpecification;

  /// The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  final pulumi.Input<String> monitorType;

  /// The name of the monitor.
  final pulumi.Input<String>? name;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AnomalyMonitorArgs].
  /// [monitorDimension] The dimensions to evaluate. Valid values: `SERVICE`.
  /// [monitorSpecification] A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  /// [monitorType] The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  /// [name] The name of the monitor.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AnomalyMonitorArgs({
    String? monitorDimension,
    String? monitorSpecification,
    required String monitorType,
    String? name,
    Map<String, String>? tags,
  })  : monitorDimension =
            pulumi.Input.asOptionalInput<String>(monitorDimension),
        monitorSpecification =
            pulumi.Input.asOptionalInput<String>(monitorSpecification),
        monitorType = pulumi.Input.asInput<String>(monitorType),
        name = pulumi.Input.asOptionalInput<String>(name),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      monitorDimension: map['monitorDimension'] == null
          ? null
          : map['monitorDimension'] as String,
      monitorSpecification: map['monitorSpecification'] == null
          ? null
          : map['monitorSpecification'] as String,
      monitorType: map['monitorType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
