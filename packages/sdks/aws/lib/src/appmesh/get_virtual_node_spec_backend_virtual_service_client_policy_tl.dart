// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate.dart';
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl {
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate>> certificates;
  final pulumi.Input<bool> enforce;
  final pulumi.Input<List<int>> ports;
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation>> validations;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl].
  /// [certificates] Required.
  /// [enforce] Required.
  /// [ports] Required.
  /// [validations] Required.
  GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl({
    required this.certificates,
    required this.enforce,
    required this.ports,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enforce': enforce,
      'ports': ports,
      'validations': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl(
      certificates: (pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate>(map['certificates'], (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enforce: (map['enforce'] as bool).input(),
      ports: ((map['ports'] as List).cast<int>()).input(),
      validations: (pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation>(map['validations'], (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

