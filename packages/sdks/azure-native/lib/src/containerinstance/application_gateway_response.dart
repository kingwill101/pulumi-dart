// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_pool_response.dart';

/// Application Gateway the CG profile will use to interact with CGs in a backend pool
class ApplicationGatewayResponse {
  /// List of Application Gateway Backend Address Pools.
  final pulumi.Input<List<ApplicationGatewayBackendAddressPoolResponse>>?
  backendAddressPools;

  /// The Application Gateway ARM resource Id.
  final pulumi.Input<String>? resource;

  /// Creates a new [ApplicationGatewayResponse].
  /// [backendAddressPools] List of Application Gateway Backend Address Pools.
  /// [resource] The Application Gateway ARM resource Id.
  ApplicationGatewayResponse({this.backendAddressPools, this.resource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationGatewayBackendAddressPoolResponse>,
            List<Map<String, dynamic>>
          >(
            backendAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayBackendAddressPoolResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resource': ?resource,
    };
  }

  factory ApplicationGatewayResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayResponse(
      backendAddressPools: (() {
        final guardedValue = map['backendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(
            guardedValue,
            (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resource: (() {
        final guardedValue = map['resource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
