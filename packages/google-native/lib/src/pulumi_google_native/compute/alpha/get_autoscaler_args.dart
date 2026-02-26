// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAutoscaler.
class GetAutoscalerArgs {
  final Input<String> autoscaler;
  final Input<String>? project;
  final Input<String> zone;

  GetAutoscalerArgs({
    required this.autoscaler,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscaler'] = autoscaler;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetAutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalerArgs(
      autoscaler: Input.asInput<String>(map['autoscaler']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
