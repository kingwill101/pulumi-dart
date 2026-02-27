// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetHttpProxy.
class GetTargetHttpProxyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpProxy;

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
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetHttpProxy: pulumi.Input.asInput<String>(map['targetHttpProxy']),
    );
  }
}
