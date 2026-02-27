// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionTargetHttpsProxy.
class GetRegionTargetHttpsProxyArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> targetHttpsProxy;

  GetRegionTargetHttpsProxyArgs3({
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

  factory GetRegionTargetHttpsProxyArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      targetHttpsProxy: Input.asInput<String>(map['targetHttpsProxy']),
    );
  }
}
