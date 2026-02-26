// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_certificate_file/get_virtual_gateway_spec_backend_default_client_policy_tl_certificate_file.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_certificate_sd/get_virtual_gateway_spec_backend_default_client_policy_tl_certificate_sd.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate {
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile>
      files;
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd>
      sds;

  GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate(
      files: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile>(
          map['files'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile
                  .fromMap((value as Map).cast<String, dynamic>())),
      sds: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd>(
          map['sds'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
