// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetPool.
class GetTargetPoolComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetPool;

  GetTargetPoolComputeBetaArgs({
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

  factory GetTargetPoolComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetPoolComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      targetPool: pulumi.Input.asInput<String>(map['targetPool']),
    );
  }
}
