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
    this.deleteProtectionValidation,
    this.domain,
    this.frontendPort,
    this.loadBalancerId,
    this.serverCertificateId,
  });

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
      deleteProtectionValidation: (() {
        final guardedValue = map['deleteProtectionValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      frontendPort: (() {
        final guardedValue = map['frontendPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      loadBalancerId: (() {
        final guardedValue = map['loadBalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverCertificateId: (() {
        final guardedValue = map['serverCertificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
