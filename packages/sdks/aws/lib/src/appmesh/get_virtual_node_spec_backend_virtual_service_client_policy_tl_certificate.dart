// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate_file.dart';
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate_sd.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate {
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile>> files;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd>> sds;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate].
  /// [files] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sds': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd>, List<Map<String, dynamic>>>(sds, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate(
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile>(map['files']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile.fromMap((value as Map).cast<String, dynamic>()))),
      sds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd>(map['sds']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
