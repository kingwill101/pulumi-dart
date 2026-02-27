// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetSslProxy.
class GetTargetSslProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetSslProxy;

  GetTargetSslProxyComputeV1Args({
    this.project,
    required this.targetSslProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetSslProxy'] = targetSslProxy;
    return map;
  }

  factory GetTargetSslProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetSslProxy: pulumi.Input.asInput<String>(map['targetSslProxy']),
    );
  }
}
