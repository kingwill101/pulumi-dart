// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_acm/get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_acm.dart';
import '../get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_file/get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_file.dart';
import '../get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_sd/get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation_trust_sd.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust {
  final List<
          GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm>
      acms;
  final List<
          GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile>
      files;
  final List<
          GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd>
      sds;

  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acms'] = Input.encodeList<
        GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm,
        Map<String, dynamic>>(acms, (value) => value.toMap());
    map['files'] = Input.encodeList<
        GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = Input.encodeList<
        GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrust(
      acms: Input.decodeList<
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm>(
          map['acms'],
          (value) =>
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustAcm
                  .fromMap((value as Map).cast<String, dynamic>())),
      files: Input.decodeList<
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile>(
          map['files'],
          (value) =>
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustFile
                  .fromMap((value as Map).cast<String, dynamic>())),
      sds: Input.decodeList<
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd>(
          map['sds'],
          (value) =>
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidationTrustSd
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
