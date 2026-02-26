// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionTargetHttpProxy.
class GetRegionTargetHttpProxyArgs3 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> targetHttpProxy;

  GetRegionTargetHttpProxyArgs3({
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

  factory GetRegionTargetHttpProxyArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionTargetHttpProxyArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      targetHttpProxy: Input.asInput<String>(map['targetHttpProxy']),
    );
  }
}
