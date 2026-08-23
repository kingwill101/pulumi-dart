// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_acm.dart';
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_file.dart';
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_sd.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust {
  /// AWS Certificate Manager (ACM) certificate. See `spec.listener.tls.certificate.acm` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm>> acms;
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile>> files;
  /// TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd>> sds;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust].
  /// [acms] AWS Certificate Manager (ACM) certificate. See `spec.listener.tls.certificate.acm` Block for details.
  /// [files] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  /// [sds] TLS validation context trust for a [Secret Discovery Service](https://www.envoyproxy.io/docs/envoy/latest/configuration/security/secret#secret-discovery-service-sds) certificate. See `spec.listener.tls.validation.trust.sds` Block for details.
  const GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acms': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm>, List<Map<String, dynamic>>>(acms, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'files': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sds': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd>, List<Map<String, dynamic>>>(sds, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust(
      acms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm>(map['acms']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm.fromMap((value as Map).cast<String, dynamic>()))),
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile>(map['files']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile.fromMap((value as Map).cast<String, dynamic>()))),
      sds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd>(map['sds']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
