// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy_tl_certificate_file.dart';
import 'get_virtual_node_spec_backend_default_client_policy_tl_certificate_sd.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate {
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile>> files;
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd>> sds;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate].
  /// [files] Required.
  /// [sds] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate({
    required this.files,
    required this.sds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sds': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd>, List<Map<String, dynamic>>>(sds, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate(
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile>(map['files']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateFile.fromMap((value as Map).cast<String, dynamic>()))),
      sds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd>(map['sds']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificateSd.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

