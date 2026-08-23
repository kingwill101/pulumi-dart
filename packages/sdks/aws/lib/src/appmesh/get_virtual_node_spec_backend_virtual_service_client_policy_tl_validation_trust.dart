// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_acm.dart';
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_file.dart';
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_sd.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust {
  /// AWS Certificate Manager (ACM) certificate. See `spec.listener.tls.certificate.acm` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm>> acms;
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile>> files;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd>> sds;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust].
  /// [acms] AWS Certificate Manager (ACM) certificate. See `spec.listener.tls.certificate.acm` Block for details.
  /// [files] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acms': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm>, List<Map<String, dynamic>>>(acms, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'files': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sds': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd>, List<Map<String, dynamic>>>(sds, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust(
      acms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm>(map['acms']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm.fromMap((value as Map).cast<String, dynamic>()))),
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile>(map['files']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile.fromMap((value as Map).cast<String, dynamic>()))),
      sds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd>(map['sds']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
