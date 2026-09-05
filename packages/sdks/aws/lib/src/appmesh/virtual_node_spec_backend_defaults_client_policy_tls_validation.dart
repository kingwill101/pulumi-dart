// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_subject_alternative_names.dart';
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_trust.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation {
  /// SANs for a TLS validation context. See `spec.listener.tls.validation.subject_alternative_names` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames?>? subjectAlternativeNames;
  /// TLS validation context trust. See `spec.listener.tls.validation.trust` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust> trust;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation].
  /// [subjectAlternativeNames] SANs for a TLS validation context. See `spec.listener.tls.validation.subject_alternative_names` Block for details.
  /// [trust] TLS validation context trust. See `spec.listener.tls.validation.trust` Block for details.
  const VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'trust': pulumi.Input.mapInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust, Map<String, dynamic>>(trust, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation(
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trust: pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust.fromMap((map['trust']! as Map).cast<String, dynamic>())),
    );
  }
}
