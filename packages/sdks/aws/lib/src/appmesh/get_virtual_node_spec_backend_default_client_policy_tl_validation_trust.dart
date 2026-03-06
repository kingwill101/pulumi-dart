// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_acm.dart';
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_file.dart';
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation_trust_sd.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust {
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustAcm>> acms;
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustFile>> files;
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrustSd>> sds;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlValidationTrust].
  /// [acms] Required.
  /// [files] Required.
  /// [sds] Required.
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

