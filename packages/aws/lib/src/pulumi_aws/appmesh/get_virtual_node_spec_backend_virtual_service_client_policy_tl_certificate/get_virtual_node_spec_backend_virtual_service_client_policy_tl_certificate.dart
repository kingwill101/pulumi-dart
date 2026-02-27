// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate_file/get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate_file.dart';
import '../get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate_sd/get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate_sd.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate {
  final List<
          GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile>
      files;
  final List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd>
      sds;

  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    map['sds'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd,
        Map<String, dynamic>>(sds, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate(
      files: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile>(
          map['files'],
          (value) =>
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateFile
                  .fromMap((value as Map).cast<String, dynamic>())),
      sds: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd>(
          map['sds'],
          (value) =>
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificateSd
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
