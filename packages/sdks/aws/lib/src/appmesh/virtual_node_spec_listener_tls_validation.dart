// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_tls_validation_subject_alternative_names.dart';
import 'virtual_node_spec_listener_tls_validation_trust.dart';

class VirtualNodeSpecListenerTlsValidation {
  /// SANs for a TLS validation context.
  final pulumi.Input<VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames>? subjectAlternativeNames;
  /// TLS validation context trust.
  final pulumi.Input<VirtualNodeSpecListenerTlsValidationTrust> trust;

  /// Creates a new [VirtualNodeSpecListenerTlsValidation].
  /// [subjectAlternativeNames] SANs for a TLS validation context.
  /// [trust] TLS validation context trust.
  const VirtualNodeSpecListenerTlsValidation({
    this.subjectAlternativeNames,
    required this.trust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'trust': pulumi.Input.mapInputValue<VirtualNodeSpecListenerTlsValidationTrust, Map<String, dynamic>>(trust, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTlsValidation.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTlsValidation(
      subjectAlternativeNames: (() { final guardedValue = map['subjectAlternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTlsValidationSubjectAlternativeNames.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trust: pulumi.Input.fromValue(VirtualNodeSpecListenerTlsValidationTrust.fromMap((map['trust']! as Map).cast<String, dynamic>())),
    );
  }
}

