// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_subject_alternative_names.dart';
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_validation_trust.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation {
  /// SANs for a TLS validation context.
  final pulumi.Input<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames>? subjectAlternativeNames;
  /// TLS validation context trust.
  final pulumi.Input<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust> trust;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation].
  /// [subjectAlternativeNames] SANs for a TLS validation context.
  /// [trust] TLS validation context trust.
  const VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'trust': pulumi.Input.mapInputValue<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust, Map<String, dynamic>>(trust, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation(
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationSubjectAlternativeNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trust: pulumi.Input.fromValue(VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidationTrust.fromMap((map['trust']! as Map).cast<String, dynamic>())),
    );
  }
}

