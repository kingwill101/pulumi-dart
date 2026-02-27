// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionTargetHttpsProxy.
class GetRegionTargetHttpsProxyArgs2 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> targetHttpsProxy;

  GetRegionTargetHttpsProxyArgs2({
    this.project,
    required this.region,
    required this.targetHttpsProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['targetHttpsProxy'] = targetHttpsProxy;
    return map;
  }

  factory GetRegionTargetHttpsProxyArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      targetHttpsProxy: Input.asInput<String>(map['targetHttpsProxy']),
    );
  }
}
