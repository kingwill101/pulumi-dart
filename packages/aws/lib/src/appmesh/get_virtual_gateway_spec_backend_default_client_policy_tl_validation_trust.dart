// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_acm.dart';
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_file.dart';
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation_trust_sd.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust {
  final List<
      GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm> acms;
  final List<
          GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile>
      files;
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd>
      sds;

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
    final map = <String, dynamic>{};
    map['acms'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm,
        Map<String, dynamic>>(acms, (value) => value.toMap());
    map['files'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrust(
      acms: pulumi.Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm>(
          map['acms'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustAcm
                  .fromMap((value as Map).cast<String, dynamic>())),
      files: pulumi.Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile>(
          map['files'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustFile
                  .fromMap((value as Map).cast<String, dynamic>())),
      sds: pulumi.Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd>(
          map['sds'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidationTrustSd
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
