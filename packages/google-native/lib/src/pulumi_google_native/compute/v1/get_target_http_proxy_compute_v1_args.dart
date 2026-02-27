// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetHttpProxy.
class GetTargetHttpProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetHttpProxy;

  GetTargetHttpProxyComputeV1Args({
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

  factory GetTargetHttpProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetHttpProxyComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetHttpProxy: pulumi.Input.asInput<String>(map['targetHttpProxy']),
    );
  }
}
