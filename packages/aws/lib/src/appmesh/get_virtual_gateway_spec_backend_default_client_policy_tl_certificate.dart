// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_certificate_file.dart';
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_certificate_sd.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate {
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile>
  files;
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd>
  sds;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate].
  /// [files] Required.
  /// [sds] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files':
          pulumi.Input.encodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile,
            Map<String, dynamic>
          >(files, (value) => value.toMap()),
      'sds':
          pulumi.Input.encodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd,
            Map<String, dynamic>
          >(sds, (value) => value.toMap()),
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate(
      files:
          pulumi.Input.decodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile
          >(
            map['files'],
            (value) =>
                GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateFile.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      sds:
          pulumi.Input.decodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd
          >(
            map['sds'],
            (value) =>
                GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificateSd.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
