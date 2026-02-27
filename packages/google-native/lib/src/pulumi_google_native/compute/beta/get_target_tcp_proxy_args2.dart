// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTargetTcpProxy.
class GetTargetTcpProxyArgs2 {
  final Input<String>? project;
  final Input<String> targetTcpProxy;

  GetTargetTcpProxyArgs2({
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

  factory GetTargetTcpProxyArgs2.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      targetTcpProxy: Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
