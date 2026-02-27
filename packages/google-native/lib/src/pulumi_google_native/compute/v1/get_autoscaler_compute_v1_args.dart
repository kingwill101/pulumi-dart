// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAutoscaler.
class GetAutoscalerComputeV1Args {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetAutoscalerComputeV1Args({
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

  factory GetAutoscalerComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetAutoscalerComputeV1Args(
      autoscaler: pulumi.Input.asInput<String>(map['autoscaler']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
