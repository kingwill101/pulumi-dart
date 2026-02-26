// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_backend_default_client_policy_tl_certificate/get_virtual_node_spec_backend_default_client_policy_tl_certificate.dart';
import '../get_virtual_node_spec_backend_default_client_policy_tl_validation/get_virtual_node_spec_backend_default_client_policy_tl_validation.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTl {
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate>
      certificates;
  final bool enforce;
  final List<int> ports;
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation>
      validations;

  GetVirtualNodeSpecBackendDefaultClientPolicyTl({
    required this.certificates,
    required this.enforce,
    required this.ports,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate,
        Map<String, dynamic>>(certificates, (value) => value.toMap());
    map['enforce'] = enforce;
    map['ports'] = ports;
    map['validations'] = Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation,
        Map<String, dynamic>>(validations, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTl.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTl(
      certificates: Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate>(
          map['certificates'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enforce: map['enforce'] as bool,
      ports: (map['ports'] as List).cast<int>(),
      validations: Input.decodeList<
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation>(
          map['validations'],
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
