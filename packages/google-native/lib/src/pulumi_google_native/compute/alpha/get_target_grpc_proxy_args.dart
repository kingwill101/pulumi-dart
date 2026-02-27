// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTargetGrpcProxy.
class GetTargetGrpcProxyArgs {
  final Input<String>? project;
  final Input<String> targetGrpcProxy;

  GetTargetGrpcProxyArgs({
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

  factory GetTargetGrpcProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetGrpcProxyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      targetGrpcProxy: Input.asInput<String>(map['targetGrpcProxy']),
    );
  }
}
