// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetTcpProxy.
class GetTargetTcpProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetTcpProxy;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetTcpProxy: pulumi.Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
