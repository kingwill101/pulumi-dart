// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_trust_acm.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_trust_file.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation_trust_sds.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust {
  /// AWS Certificate Manager (ACM) certificate.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm>? acm;
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustFile>? file;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds>? sds;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust].
  /// [acm] AWS Certificate Manager (ACM) certificate.
  /// [file] Optional.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate.
  const VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust({
    this.acm,
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acm': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm, Map<String, dynamic>>(acm, (value) => value.toMap()),
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'sds': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds, Map<String, dynamic>>(sds, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrust(
      acm: (() { final guardedValue = map['acm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustAcm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sds: (() { final guardedValue = map['sds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidationTrustSds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
