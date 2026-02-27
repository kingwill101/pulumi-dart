// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAutoscaler.
class GetAutoscalerComputeBetaArgs {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetAutoscalerComputeBetaArgs({
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

  factory GetAutoscalerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalerComputeBetaArgs(
      autoscaler: pulumi.Input.asInput<String>(map['autoscaler']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
