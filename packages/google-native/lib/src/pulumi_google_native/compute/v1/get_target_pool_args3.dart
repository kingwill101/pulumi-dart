// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTargetPool.
class GetTargetPoolArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> targetPool;

  GetTargetPoolArgs3({
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

  factory GetTargetPoolArgs3.fromMap(Map<String, dynamic> map) {
    return GetTargetPoolArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      targetPool: Input.asInput<String>(map['targetPool']),
    );
  }
}
