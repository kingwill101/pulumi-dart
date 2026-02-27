// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTargetHttpProxy.
class GetTargetHttpProxyArgs3 {
  final Input<String>? project;
  final Input<String> targetHttpProxy;

  GetTargetHttpProxyArgs3({
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

  factory GetTargetHttpProxyArgs3.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      targetHttpProxy: Input.asInput<String>(map['targetHttpProxy']),
    );
  }
}
