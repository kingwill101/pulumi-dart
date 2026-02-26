// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTargetTcpProxy.
class GetTargetTcpProxyArgs {
  final Input<String>? project;
  final Input<String> targetTcpProxy;

  GetTargetTcpProxyArgs({
    this.project,
    required this.targetTcpProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetTcpProxy'] = targetTcpProxy;
    return map;
  }

  factory GetTargetTcpProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      targetTcpProxy: Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
