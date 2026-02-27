// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionAutoscaler.
class GetRegionAutoscalerComputeBetaArgs {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionAutoscalerComputeBetaArgs({
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

  factory GetRegionAutoscalerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerComputeBetaArgs(
      autoscaler: pulumi.Input.asInput<String>(map['autoscaler']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
