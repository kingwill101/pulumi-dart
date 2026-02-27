// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecurityAction.
class GetSecurityActionArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityActionId;

  GetSecurityActionArgs({
    required this.environmentId,
    required this.organizationId,
    required this.securityActionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    map['securityActionId'] = securityActionId;
    return map;
  }

  factory GetSecurityActionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityActionArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      securityActionId: pulumi.Input.asInput<String>(map['securityActionId']),
    );
  }
}
