// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionTargetHttpProxy.
class GetRegionTargetHttpProxyArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> targetHttpProxy;

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
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      targetHttpProxy: Input.asInput<String>(map['targetHttpProxy']),
    );
  }
}
