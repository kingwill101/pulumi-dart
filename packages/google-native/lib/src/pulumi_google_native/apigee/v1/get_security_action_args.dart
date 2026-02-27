// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSecurityAction.
class GetSecurityActionArgs {
  final Input<String> environmentId;
  final Input<String> organizationId;
  final Input<String> securityActionId;

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
      environmentId: Input.asInput<String>(map['environmentId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      securityActionId: Input.asInput<String>(map['securityActionId']),
    );
  }
}
