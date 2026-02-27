// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionTargetHttpProxy.
class GetRegionTargetHttpProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  final pulumi.Input<String> targetHttpProxy;

  GetRegionTargetHttpProxyArgs({
    this.project,
    required this.region,
    required this.targetHttpProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['targetHttpProxy'] = targetHttpProxy;
    return map;
  }

  factory GetRegionTargetHttpProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpProxyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      targetHttpProxy: pulumi.Input.asInput<String>(map['targetHttpProxy']),
    );
  }
}
