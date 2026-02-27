// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetPool.
class GetTargetPoolComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetPool;

  GetTargetPoolComputeV1Args({
    this.project,
    required this.region,
    required this.targetPool,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['targetPool'] = targetPool;
    return map;
  }

  factory GetTargetPoolComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetPoolComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      targetPool: pulumi.Input.asInput<String>(map['targetPool']),
    );
  }
}
