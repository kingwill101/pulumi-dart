// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_certificate.dart';
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTl {
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate>
  certificates;
  final bool enforce;
  final List<int> ports;
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation>
  validations;

  /// Creates a new [GetVirtualGatewaySpecBackendDefaultClientPolicyTl].
  /// [certificates] Required.
  /// [enforce] Required.
  /// [ports] Required.
  /// [validations] Required.
  GetVirtualGatewaySpecBackendDefaultClientPolicyTl({
    required this.certificates,
    required this.enforce,
    required this.ports,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates':
          pulumi.Input.encodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate,
            Map<String, dynamic>
          >(certificates, (value) => value.toMap()),
      'enforce': enforce,
      'ports': ports,
      'validations':
          pulumi.Input.encodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation,
            Map<String, dynamic>
          >(validations, (value) => value.toMap()),
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTl.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTl(
      certificates:
          pulumi.Input.decodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate
          >(
            map['certificates'],
            (value) =>
                GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      enforce: map['enforce'] as bool,
      ports: (map['ports'] as List).cast<int>(),
      validations:
          pulumi.Input.decodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation
          >(
            map['validations'],
            (value) =>
                GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
