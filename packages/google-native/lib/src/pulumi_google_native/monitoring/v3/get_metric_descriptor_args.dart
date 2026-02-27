// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getMetricDescriptor.
class GetMetricDescriptorArgs {
  final pulumi.Input<String> metricDescriptorId;
  final pulumi.Input<String>? project;

  GetMetricDescriptorArgs({
    required this.metricDescriptorId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metricDescriptorId'] = metricDescriptorId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetMetricDescriptorArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricDescriptorArgs(
      metricDescriptorId:
          pulumi.Input.asInput<String>(map['metricDescriptorId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
