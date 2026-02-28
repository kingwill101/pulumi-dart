// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_metric_descriptor_args_doc}
/// Arguments for getMetricDescriptor.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_metric_descriptor_args_doc}
class GetMetricDescriptorArgs {
  final pulumi.Input<String> metricDescriptorId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetMetricDescriptorArgs].
  /// [metricDescriptorId] Required.
  /// [project] Optional.
  GetMetricDescriptorArgs({
    required String metricDescriptorId,
    String? project,
  }) :
      metricDescriptorId = pulumi.Input.asInput<String>(metricDescriptorId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricDescriptorId': metricDescriptorId,
      'project': ?project,
    };
  }

  factory GetMetricDescriptorArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricDescriptorArgs(
      metricDescriptorId: map['metricDescriptorId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

