// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_backend_default_client_policy_tl_certificate_file/get_virtual_node_spec_backend_default_client_policy_tl_certificate_file.dart';
import '../get_virtual_node_spec_backend_default_client_policy_tl_certificate_sd/get_virtual_node_spec_backend_default_client_policy_tl_certificate_sd.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate {
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile>
      files;
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd> sds;

  GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate(
      files: Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile>(
          map['files'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile
                  .fromMap((value as Map).cast<String, dynamic>())),
      sds: Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd>(
          map['sds'],
          (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
