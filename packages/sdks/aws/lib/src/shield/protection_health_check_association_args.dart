// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_shield_protection_health_check_association_protection_health_check_association_args_doc}
/// The set of arguments for ProtectionHealthCheckAssociation.
/// {@endtemplate}
/// {@macro pulumi_shield_protection_health_check_association_protection_health_check_association_args_doc}
class ProtectionHealthCheckAssociationArgs {
  /// ARN of the Route53 Health Check resource which will be associated to the protected resource.
  final pulumi.Input<String> healthCheckArn;
  /// The ID of the protected resource.
  final pulumi.Input<String> shieldProtectionId;

  /// Creates a new [ProtectionHealthCheckAssociationArgs].
  /// [healthCheckArn] ARN of the Route53 Health Check resource which will be associated to the protected resource.
  /// [shieldProtectionId] The ID of the protected resource.
  const ProtectionHealthCheckAssociationArgs({
    required this.healthCheckArn,
    required this.shieldProtectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckArn': healthCheckArn,
      'shieldProtectionId': shieldProtectionId,
    };
  }

  factory ProtectionHealthCheckAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionHealthCheckAssociationArgs(
      healthCheckArn: pulumi.Input.fromValue(map['healthCheckArn'] as String),
      shieldProtectionId: pulumi.Input.fromValue(map['shieldProtectionId'] as String),
    );
  }
}
