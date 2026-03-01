// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_backend_default_client_policy.dart';

class GetVirtualGatewaySpecBackendDefault {
  final List<GetVirtualGatewaySpecBackendDefaultClientPolicy> clientPolicies;

  /// Creates a new [GetVirtualGatewaySpecBackendDefault].
  /// [clientPolicies] Required.
  GetVirtualGatewaySpecBackendDefault({required this.clientPolicies});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPolicies':
          pulumi.Input.encodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicy,
            Map<String, dynamic>
          >(clientPolicies, (value) => value.toMap()),
    };
  }

  factory GetVirtualGatewaySpecBackendDefault.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecBackendDefault(
      clientPolicies:
          pulumi.Input.decodeList<
            GetVirtualGatewaySpecBackendDefaultClientPolicy
          >(
            map['clientPolicies'],
            (value) => GetVirtualGatewaySpecBackendDefaultClientPolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
