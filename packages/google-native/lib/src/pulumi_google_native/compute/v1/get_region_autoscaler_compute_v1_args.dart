// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionAutoscaler.
class GetRegionAutoscalerComputeV1Args {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionAutoscalerComputeV1Args({
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

  factory GetRegionAutoscalerComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerComputeV1Args(
      autoscaler: pulumi.Input.asInput<String>(map['autoscaler']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
