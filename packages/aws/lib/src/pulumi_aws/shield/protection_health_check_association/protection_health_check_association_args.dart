// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProtectionHealthCheckAssociation.
class ProtectionHealthCheckAssociationArgs {
  /// The ARN (Amazon Resource Name) of the Route53 Health Check resource which will be associated to the protected resource.
  final Input<String> healthCheckArn;

  /// The ID of the protected resource.
  final Input<String> shieldProtectionId;

  ProtectionHealthCheckAssociationArgs({
    required this.healthCheckArn,
    required this.shieldProtectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthCheckArn'] = healthCheckArn;
    map['shieldProtectionId'] = shieldProtectionId;
    return map;
  }

  factory ProtectionHealthCheckAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ProtectionHealthCheckAssociationArgs(
      healthCheckArn: Input.asInput<String>(map['healthCheckArn']),
      shieldProtectionId: Input.asInput<String>(map['shieldProtectionId']),
    );
  }
}
