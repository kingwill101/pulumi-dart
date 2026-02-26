// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTargetHttpProxy.
class GetTargetHttpProxyArgs {
  final Input<String>? project;
  final Input<String> targetHttpProxy;

  GetTargetHttpProxyArgs({
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

  factory GetTargetHttpProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      targetHttpProxy: Input.asInput<String>(map['targetHttpProxy']),
    );
  }
}
