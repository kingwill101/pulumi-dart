// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_acm.dart';
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_file.dart';
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_sd.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust {
  final pulumi.Input<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm>> acms;
  final pulumi.Input<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile>> files;
  final pulumi.Input<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd>> sds;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust].
  /// [acms] Required.
  /// [files] Required.
  /// [sds] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acms': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm>, List<Map<String, dynamic>>>(acms, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'files': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sds': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd>, List<Map<String, dynamic>>>(sds, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust(
      acms: (pulumi.Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm>(map['acms']!, (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm.fromMap((value as Map).cast<String, dynamic>()))).input(),
      files: (pulumi.Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile>(map['files']!, (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sds: (pulumi.Input.decodeList<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd>(map['sds']!, (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

