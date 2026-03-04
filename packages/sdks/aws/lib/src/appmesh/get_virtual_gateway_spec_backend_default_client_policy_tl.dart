// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_certificate.dart';
import 'get_virtual_gateway_spec_backend_default_client_policy_tl_validation.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTl {
  final pulumi.Input<
    List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate>
  >
  certificates;
  final pulumi.Input<bool> enforce;
  final pulumi.Input<List<int>> ports;
  final pulumi.Input<
    List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation>
  >
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
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate>,
            List<Map<String, dynamic>>
          >(
            certificates,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enforce': enforce,
      'ports': ports,
      'validations':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation>,
            List<Map<String, dynamic>>
          >(
            validations,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTl.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTl(
      certificates: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate
        >(
          map['certificates']!,
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      enforce: pulumi.Input.fromValue(map['enforce'] as bool),
      ports: pulumi.Input.fromValue((map['ports'] as List).cast<int>()),
      validations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation
        >(
          map['validations']!,
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
