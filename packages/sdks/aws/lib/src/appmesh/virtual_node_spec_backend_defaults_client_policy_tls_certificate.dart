// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_defaults_client_policy_tls_certificate_file.dart';
import 'virtual_node_spec_backend_defaults_client_policy_tls_certificate_sds.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate {
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile?>? file;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds?>? sds;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate].
  /// [file] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate({
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'sds': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds, Map<String, dynamic>>(sds, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sds: (() { final guardedValue = map['sds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificateSds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
