// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetTcpProxy.
class GetTargetTcpProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetTcpProxy;

  GetTargetTcpProxyComputeV1Args({
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

  factory GetTargetTcpProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetTcpProxyComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetTcpProxy: pulumi.Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
