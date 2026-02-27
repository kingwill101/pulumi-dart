// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProtectionHealthCheckAssociation.
class ProtectionHealthCheckAssociationArgs {
  /// The ARN (Amazon Resource Name) of the Route53 Health Check resource which will be associated to the protected resource.
  final pulumi.Input<String> healthCheckArn;

  /// The ID of the protected resource.
  final pulumi.Input<String> shieldProtectionId;

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
      healthCheckArn: pulumi.Input.asInput<String>(map['healthCheckArn']),
      shieldProtectionId:
          pulumi.Input.asInput<String>(map['shieldProtectionId']),
    );
  }
}
