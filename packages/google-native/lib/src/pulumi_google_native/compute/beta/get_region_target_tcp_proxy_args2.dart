// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionTargetTcpProxy.
class GetRegionTargetTcpProxyArgs2 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> targetTcpProxy;

  GetRegionTargetTcpProxyArgs2({
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

  factory GetRegionTargetTcpProxyArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetTcpProxyArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      targetTcpProxy: Input.asInput<String>(map['targetTcpProxy']),
    );
  }
}
