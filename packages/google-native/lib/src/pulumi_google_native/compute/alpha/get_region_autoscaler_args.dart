// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionAutoscaler.
class GetRegionAutoscalerArgs {
  final Input<String> autoscaler;
  final Input<String>? project;
  final Input<String> region;

  GetRegionAutoscalerArgs({
    required this.autoscaler,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscaler'] = autoscaler;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionAutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerArgs(
      autoscaler: Input.asInput<String>(map['autoscaler']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
