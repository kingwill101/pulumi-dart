// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_subject_alternative_names.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_trust.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation {
  /// SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames>? subjectAlternativeNames;
  /// TLS validation context trust.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust> trust;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation].
  /// [subjectAlternativeNames] SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context.
  /// [trust] TLS validation context trust.
  VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'trust': pulumi.Input.mapInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust, Map<String, dynamic>>(trust, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation(
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationSubjectAlternativeNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trust: pulumi.Input.fromValue(VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust.fromMap((map['trust']! as Map).cast<String, dynamic>())),
    );
  }
}

