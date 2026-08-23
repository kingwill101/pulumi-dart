// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_certificate.dart';
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl_validation.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl {
  /// Listener's TLS certificate. See `spec.listener.tls.certificate` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate>> certificates;
  /// Whether the policy is enforced.
  final pulumi.Input<bool> enforce;
  /// One or more ports that the policy is enforced for.
  final pulumi.Input<List<int>> ports;
  /// Listener's Transport Layer Security (TLS) validation context. See `spec.listener.tls.validation` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation>> validations;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl].
  /// [certificates] Listener's TLS certificate. See `spec.listener.tls.certificate` Block for details.
  /// [enforce] Whether the policy is enforced.
  /// [ports] One or more ports that the policy is enforced for.
  /// [validations] Listener's Transport Layer Security (TLS) validation context. See `spec.listener.tls.validation` Block for details.
  const GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl({
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
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate>(map['certificates']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      enforce: pulumi.Input.fromValue(map['enforce'] as bool),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
      validations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation>(map['validations']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTlValidation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
