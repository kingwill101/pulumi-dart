// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProtectionHealthCheckAssociation resources.
class ProtectionHealthCheckAssociationState {
  /// The ARN (Amazon Resource Name) of the Route53 Health Check resource which will be associated to the protected resource.
  final pulumi.Input<String>? healthCheckArn;
  /// The ID of the protected resource.
  final pulumi.Input<String>? shieldProtectionId;

  /// Creates a new [ProtectionHealthCheckAssociationState].
  /// [healthCheckArn] The ARN (Amazon Resource Name) of the Route53 Health Check resource which will be associated to the protected resource.
  /// [shieldProtectionId] The ID of the protected resource.
  ProtectionHealthCheckAssociationState({
    pulumi.Output<String>? healthCheckArn,
    pulumi.Output<String>? shieldProtectionId,
  }) :
      healthCheckArn = pulumi.Input.asOptionalInput<String>(healthCheckArn),
      shieldProtectionId = pulumi.Input.asOptionalInput<String>(shieldProtectionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckArn': ?healthCheckArn,
      'shieldProtectionId': ?shieldProtectionId,
    };
  }

  factory ProtectionHealthCheckAssociationState.fromMap(Map<String, dynamic> map) {
    return ProtectionHealthCheckAssociationState(
      healthCheckArn: map['healthCheckArn'] == null ? null : pulumi.Output.create<String>(map['healthCheckArn'] as String),
      shieldProtectionId: map['shieldProtectionId'] == null ? null : pulumi.Output.create<String>(map['shieldProtectionId'] as String),
    );
  }
}

