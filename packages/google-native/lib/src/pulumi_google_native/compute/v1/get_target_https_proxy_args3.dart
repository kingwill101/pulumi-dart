// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTargetHttpsProxy.
class GetTargetHttpsProxyArgs3 {
  final Input<String>? project;
  final Input<String> targetHttpsProxy;

  GetTargetHttpsProxyArgs3({
    this.project,
    required this.targetHttpsProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetHttpsProxy'] = targetHttpsProxy;
    return map;
  }

  factory GetTargetHttpsProxyArgs3.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpsProxyArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      targetHttpsProxy: Input.asInput<String>(map['targetHttpsProxy']),
    );
  }
}
