// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy_tl_certificate.dart';
import 'get_virtual_node_spec_backend_default_client_policy_tl_validation.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicyTl {
  final pulumi.Input<
    List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate>
  >
  certificates;
  final pulumi.Input<bool> enforce;
  final pulumi.Input<List<int>> ports;
  final pulumi.Input<
    List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation>
  >
  validations;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicyTl].
  /// [certificates] Required.
  /// [enforce] Required.
  /// [ports] Required.
  /// [validations] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicyTl({
    required this.certificates,
    required this.enforce,
    required this.ports,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates':
          pulumi.Input.mapInputValue<
            List<GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate>,
            List<Map<String, dynamic>>
          >(
            certificates,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enforce': enforce,
      'ports': ports,
      'validations':
          pulumi.Input.mapInputValue<
            List<GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation>,
            List<Map<String, dynamic>>
          >(
            validations,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicyTl.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecBackendDefaultClientPolicyTl(
      certificates: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate
        >(
          map['certificates']!,
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlCertificate.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      enforce: pulumi.Input.fromValue(map['enforce'] as bool),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
      validations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation
        >(
          map['validations']!,
          (value) =>
              GetVirtualNodeSpecBackendDefaultClientPolicyTlValidation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
