// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTargetHttpProxy.
class GetTargetHttpProxyArgs2 {
  final Input<String>? project;
  final Input<String> targetHttpProxy;

  GetTargetHttpProxyArgs2({
    this.project,
    required this.targetHttpProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetHttpProxy'] = targetHttpProxy;
    return map;
  }

  factory GetTargetHttpProxyArgs2.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      targetHttpProxy: Input.asInput<String>(map['targetHttpProxy']),
    );
  }
}
