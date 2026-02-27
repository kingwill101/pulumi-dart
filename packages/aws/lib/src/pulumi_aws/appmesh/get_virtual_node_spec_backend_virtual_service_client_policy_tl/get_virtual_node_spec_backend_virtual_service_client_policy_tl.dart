// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate/get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate.dart';
import '../get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation/get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl {
  final List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate>
      certificates;
  final bool enforce;
  final List<int> ports;
  final List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation>
      validations;

  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl({
    required this.certificates,
    required this.enforce,
    required this.ports,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate,
        Map<String, dynamic>>(certificates, (value) => value.toMap());
    map['enforce'] = enforce;
    map['ports'] = ports;
    map['validations'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation,
        Map<String, dynamic>>(validations, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl(
      certificates: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate>(
          map['certificates'],
          (value) =>
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate
                  .fromMap((value as Map).cast<String, dynamic>())),
      enforce: map['enforce'] as bool,
      ports: (map['ports'] as List).cast<int>(),
      validations: pulumi.Input.decodeList<
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation>(
          map['validations'],
          (value) =>
              GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
