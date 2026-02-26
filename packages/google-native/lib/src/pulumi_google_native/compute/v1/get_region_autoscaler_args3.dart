// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionAutoscaler.
class GetRegionAutoscalerArgs3 {
  final Input<String> autoscaler;
  final Input<String>? project;
  final Input<String> region;

  GetRegionAutoscalerArgs3({
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

  factory GetRegionAutoscalerArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerArgs3(
      autoscaler: Input.asInput<String>(map['autoscaler']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
