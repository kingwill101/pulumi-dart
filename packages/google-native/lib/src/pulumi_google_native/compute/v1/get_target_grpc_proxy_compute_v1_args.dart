// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetGrpcProxy.
class GetTargetGrpcProxyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetGrpcProxy;

  GetTargetGrpcProxyComputeV1Args({
    this.project,
    required this.targetGrpcProxy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetGrpcProxy'] = targetGrpcProxy;
    return map;
  }

  factory GetTargetGrpcProxyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetTargetGrpcProxyComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetGrpcProxy: pulumi.Input.asInput<String>(map['targetGrpcProxy']),
    );
  }
}
