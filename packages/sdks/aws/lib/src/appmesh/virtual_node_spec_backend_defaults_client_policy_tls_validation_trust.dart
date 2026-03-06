// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_acm.dart';
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_file.dart';
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation_trust_sds.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust {
  /// TLS validation context trust for an AWS Certificate Manager (ACM) certificate.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm>? acm;
  /// TLS validation context trust for a local file certificate.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile>? file;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds>? sds;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust].
  /// [acm] TLS validation context trust for an AWS Certificate Manager (ACM) certificate.
  /// [file] TLS validation context trust for a local file certificate.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  const VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust({
    this.acm,
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acm': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm, Map<String, dynamic>>(acm, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'sds': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds, Map<String, dynamic>>(sds, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrust(
      acm: (() { final guardedValue = map['acm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustAcm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sds: (() { final guardedValue = map['sds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicyTlsValidationTrustSds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

