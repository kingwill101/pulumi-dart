// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_acm/get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_acm.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_file/get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_file.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_sd/get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_sd.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust {
  final List<
      GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm> acms;
  final List<
          GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile>
      files;
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd>
      sds;

  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust({
    required this.acms,
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acms'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm,
        Map<String, dynamic>>(acms, (value) => value.toMap());
    map['files'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust(
      acms: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm>(
          map['acms'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm
                  .fromMap((value as Map).cast<String, dynamic>())),
      files: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile>(
          map['files'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile
                  .fromMap((value as Map).cast<String, dynamic>())),
      sds: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd>(
          map['sds'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
