// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTargetGrpcProxy.
class GetTargetGrpcProxyArgs2 {
  final Input<String>? project;
  final Input<String> targetGrpcProxy;

  GetTargetGrpcProxyArgs2({
    this.project,
    required this.targetGrpcProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetGrpcProxy'] = targetGrpcProxy;
    return map;
  }

  factory GetTargetGrpcProxyArgs2.fromMap(Map<String, dynamic> map) {
    return GetTargetGrpcProxyArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      targetGrpcProxy: Input.asInput<String>(map['targetGrpcProxy']),
    );
  }
}
