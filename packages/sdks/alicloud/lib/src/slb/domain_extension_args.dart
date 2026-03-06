// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_domain_extension_domain_extension_args_doc}
/// The set of arguments for DomainExtension.
/// {@endtemplate}
/// {@macro pulumi_slb_domain_extension_domain_extension_args_doc}
class DomainExtensionArgs {
  /// Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  final pulumi.Input<bool>? deleteProtectionValidation;
  /// The domain name.
  final pulumi.Input<String> domain;
  /// The frontend port used by the HTTPS listener of the SLB instance. Valid values: 1–65535.
  final pulumi.Input<int> frontendPort;
  /// The ID of the SLB instance.
  final pulumi.Input<String> loadBalancerId;
  /// The ID of the certificate used by the domain name.
  final pulumi.Input<String> serverCertificateId;

  /// Creates a new [DomainExtensionArgs].
  /// [deleteProtectionValidation] Checking DeleteProtection of SLB instance before deleting. If true, this resource will not be deleted when its SLB instance enabled DeleteProtection. Default to false.
  /// [domain] The domain name.
  /// [frontendPort] The frontend port used by the HTTPS listener of the SLB instance. Valid values: 1–65535.
  /// [loadBalancerId] The ID of the SLB instance.
  /// [serverCertificateId] The ID of the certificate used by the domain name.
  const DomainExtensionArgs({
    this.deleteProtectionValidation,
    required this.domain,
    required this.frontendPort,
    required this.loadBalancerId,
    required this.serverCertificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteProtectionValidation': ?deleteProtectionValidation,
      'domain': domain,
      'frontendPort': frontendPort,
      'loadBalancerId': loadBalancerId,
      'serverCertificateId': serverCertificateId,
    };
  }

  factory DomainExtensionArgs.fromMap(Map<String, dynamic> map) {
    return DomainExtensionArgs(
      deleteProtectionValidation: (() { final guardedValue = map['deleteProtectionValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      frontendPort: pulumi.Input.fromValue(map['frontendPort'] as int),
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      serverCertificateId: pulumi.Input.fromValue(map['serverCertificateId'] as String),
    );
  }
}

