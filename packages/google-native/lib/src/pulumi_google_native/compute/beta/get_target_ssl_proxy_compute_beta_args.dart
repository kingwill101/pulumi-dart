// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetSslProxy.
class GetTargetSslProxyComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetSslProxy;

  GetTargetSslProxyComputeBetaArgs({
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

  factory GetTargetSslProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetSslProxy: pulumi.Input.asInput<String>(map['targetSslProxy']),
    );
  }
}
