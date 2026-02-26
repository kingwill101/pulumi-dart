// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_certificate/get_virtual_gateway_spec_backend_default_client_policy_tl_certificate.dart';
import '../get_virtual_gateway_spec_backend_default_client_policy_tl_validation/get_virtual_gateway_spec_backend_default_client_policy_tl_validation.dart';

class GetVirtualGatewaySpecBackendDefaultClientPolicyTl {
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate>
      certificates;
  final bool enforce;
  final List<int> ports;
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation>
      validations;

  GetVirtualGatewaySpecBackendDefaultClientPolicyTl({
    required this.certificates,
    required this.enforce,
    required this.ports,
    required this.validations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate,
        Map<String, dynamic>>(certificates, (value) => value.toMap());
    map['enforce'] = enforce;
    map['ports'] = ports;
    map['validations'] = Input.encodeList<
        GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation,
        Map<String, dynamic>>(validations, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecBackendDefaultClientPolicyTl.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecBackendDefaultClientPolicyTl(
      certificates: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate>(
          map['certificates'],
          (value) =>
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlCertificate
                  .fromMap((value as Map).cast<String, dynamic>())),
      enforce: map['enforce'] as bool,
      ports: (map['ports'] as List).cast<int>(),
      validations: Input.decodeList<
              GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation>(
          map['validations'],
          (value) => GetVirtualGatewaySpecBackendDefaultClientPolicyTlValidation
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
