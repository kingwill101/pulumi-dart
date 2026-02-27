// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionTargetTcpProxy.
class GetRegionTargetTcpProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetTcpProxy;

  GetRegionTargetTcpProxyComputeBetaArgs({
    this.project,
    required this.region,
    required this.targetTcpProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['targetTcpProxy'] = targetTcpProxy;
    return map;
  }

  factory GetRegionTargetTcpProxyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetRegionTargetTcpProxyComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      targetTcpProxy: pulumi.Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
