// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy_tl_certificate.dart';
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTl {
  /// Listener's TLS certificate. See `spec.listener.tls.certificate` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate>> certificates;
  /// Whether the policy is enforced.
  final pulumi.Input<bool> enforce;
  /// One or more ports that the policy is enforced for.
  final pulumi.Input<List<int>> ports;
  /// Listener's TLS validation context. See `spec.listener.tls.validation` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation>> validations;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTl].
  /// [certificates] Listener's TLS certificate. See `spec.listener.tls.certificate` Block for details.
  /// [enforce] Whether the policy is enforced.
  /// [ports] One or more ports that the policy is enforced for.
  /// [validations] Listener's TLS validation context. See `spec.listener.tls.validation` Block for details.
  const GetVirtualNodeSpecBackendDefaultClientPolicyTl({
    required this.certificates,
    required this.enforce,
    required this.ports,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enforce': enforce,
      'ports': ports,
      'validations': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation>, List<Map<String, dynamic>>>(validations, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTl.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTl(
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate>(map['certificates']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      enforce: pulumi.Input.fromValue(map['enforce'] as bool),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
      validations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation>(map['validations']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
