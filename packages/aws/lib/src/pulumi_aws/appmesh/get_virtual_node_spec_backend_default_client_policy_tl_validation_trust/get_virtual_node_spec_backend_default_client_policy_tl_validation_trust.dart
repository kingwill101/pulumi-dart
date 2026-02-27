// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_acm/get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_acm.dart';
import '../get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_file/get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_file.dart';
import '../get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_sd/get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_sd.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust {
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm>
      acms;
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile>
      files;
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd>
      sds;

  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acms'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm,
        Map<String, dynamic>>(acms, (value) => value.toMap());
    map['files'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust(
      acms: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm>(
          map['acms'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm
                  .fromMap((value as Map).cast<String, dynamic>())),
      files: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile>(
          map['files'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile
                  .fromMap((value as Map).cast<String, dynamic>())),
      sds: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd>(
          map['sds'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
