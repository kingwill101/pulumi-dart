// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetGrpcProxy.
class GetTargetGrpcProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetGrpcProxy;

  GetTargetGrpcProxyComputeBetaArgs({
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

  factory GetTargetGrpcProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetGrpcProxyComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetGrpcProxy: pulumi.Input.asInput<String>(map['targetGrpcProxy']),
    );
  }
}
