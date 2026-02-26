// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTargetTcpProxy.
class GetTargetTcpProxyArgs3 {
  final Input<String>? project;
  final Input<String> targetTcpProxy;

  GetTargetTcpProxyArgs3({
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

  factory GetTargetTcpProxyArgs3.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      targetTcpProxy: Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
