// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainExtension resources.
class DomainExtensionState {
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// The domain name.
  final pulumi.Input<String>? domain;
  /// The frontend port used by the HTTPS listener of the SLB instance. Valid values: 1–65535.
  final pulumi.Input<int>? frontendPort;
  /// The ID of the SLB instance.
  final pulumi.Input<String>? loadBalancerId;
  /// The ID of the certificate used by the domain name.
  final pulumi.Input<String>? serverCertificateId;

  /// Creates a new [DomainExtensionState].
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  /// [domain] The domain name.
  /// [frontendPort] The frontend port used by the HTTPS listener of the SLB instance. Valid values: 1–65535.
  /// [loadBalancerId] The ID of the SLB instance.
  /// [serverCertificateId] The ID of the certificate used by the domain name.
  DomainExtensionState({
    pulumi.Output<bool>? deleteProtectionValidation,
    pulumi.Output<String>? domain,
    pulumi.Output<int>? frontendPort,
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? serverCertificateId,
  }) :
      deleteProtectionValidation = pulumi.Input.asOptionalInput<bool>(deleteProtectionValidation),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      frontendPort = pulumi.Input.asOptionalInput<int>(frontendPort),
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      serverCertificateId = pulumi.Input.asOptionalInput<String>(serverCertificateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'domain': ?domain,
      'frontendPort': ?frontendPort,
      'loadBalancerId': ?loadBalancerId,
      'serverCertificateId': ?serverCertificateId,
    };
  }

  factory DomainExtensionState.fromMap(Map<String, dynamic> map) {
    return DomainExtensionState(
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : pulumi.Output.create<bool>(map['deleteProtectionValidation'] as bool),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      frontendPort: map['frontendPort'] == null ? null : pulumi.Output.create<int>(map['frontendPort'] as int),
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      serverCertificateId: map['serverCertificateId'] == null ? null : pulumi.Output.create<String>(map['serverCertificateId'] as String),
    );
  }
}

