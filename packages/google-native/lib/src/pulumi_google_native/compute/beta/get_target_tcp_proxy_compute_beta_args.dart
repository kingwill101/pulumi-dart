// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetTcpProxy.
class GetTargetTcpProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetTcpProxy;

  GetTargetTcpProxyComputeBetaArgs({
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

  factory GetTargetTcpProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetTcpProxy: pulumi.Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
