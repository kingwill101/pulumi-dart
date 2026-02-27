// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionTargetTcpProxy.
class GetRegionTargetTcpProxyArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> targetTcpProxy;

  GetRegionTargetTcpProxyArgs({
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

  factory GetRegionTargetTcpProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetTcpProxyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      targetTcpProxy: Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
