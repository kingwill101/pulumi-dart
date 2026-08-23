// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_certificate_file.dart';
import 'virtual_node_spec_backend_virtual_service_client_policy_tls_certificate_sds.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate {
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile>? file;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds>? sds;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate].
  /// [file] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate({
    this.file,
    this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile, Map<String, dynamic>>(file, (value) => value.toMap()),
      'sds': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds, Map<String, dynamic>>(sds, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sds: (() { final guardedValue = map['sds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificateSds.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
