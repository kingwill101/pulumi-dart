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
  DomainExtensionArgs({
    pulumi.Output<bool>? deleteProtectionValidation,
    required pulumi.Output<String> domain,
    required pulumi.Output<int> frontendPort,
    required pulumi.Output<String> loadBalancerId,
    required pulumi.Output<String> serverCertificateId,
  }) :
      deleteProtectionValidation = pulumi.Input.asOptionalInput<bool>(deleteProtectionValidation),
      domain = pulumi.Input.asInput<String>(domain),
      frontendPort = pulumi.Input.asInput<int>(frontendPort),
      loadBalancerId = pulumi.Input.asInput<String>(loadBalancerId),
      serverCertificateId = pulumi.Input.asInput<String>(serverCertificateId);

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
      deleteProtectionValidation: map['deleteProtectionValidation'] == null ? null : pulumi.Output.create<bool>(map['deleteProtectionValidation'] as bool),
      domain: pulumi.Output.create<String>(map['domain'] as String),
      frontendPort: pulumi.Output.create<int>(map['frontendPort'] as int),
      loadBalancerId: pulumi.Output.create<String>(map['loadBalancerId'] as String),
      serverCertificateId: pulumi.Output.create<String>(map['serverCertificateId'] as String),
    );
  }
}

