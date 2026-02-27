// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetHttpsProxy.
class GetTargetHttpsProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpsProxy;

  GetTargetHttpsProxyArgs({
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

  factory GetTargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpsProxyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetHttpsProxy: pulumi.Input.asInput<String>(map['targetHttpsProxy']),
    );
  }
}
