// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionTargetHttpsProxy.
class GetRegionTargetHttpsProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpsProxy;

  GetRegionTargetHttpsProxyArgs({
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

  factory GetRegionTargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpsProxyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      targetHttpsProxy: pulumi.Input.asInput<String>(map['targetHttpsProxy']),
    );
  }
}
