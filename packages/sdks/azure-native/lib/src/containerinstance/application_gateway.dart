// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_pool.dart';

/// Application Gateway the CG profile will use to interact with CGs in a backend pool
class ApplicationGateway {
  /// List of Application Gateway Backend Address Pools.
  final pulumi.Input<List<ApplicationGatewayBackendAddressPool>>?
  backendAddressPools;

  /// The Application Gateway ARM resource Id.
  final pulumi.Input<String>? resource;

  /// Creates a new [ApplicationGateway].
  /// [backendAddressPools] List of Application Gateway Backend Address Pools.
  /// [resource] The Application Gateway ARM resource Id.
  ApplicationGateway({this.backendAddressPools, this.resource});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationGatewayBackendAddressPool>,
            List<Map<String, dynamic>>
          >(
            backendAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayBackendAddressPool,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resource': ?resource,
    };
  }

  factory ApplicationGateway.fromMap(Map<String, dynamic> map) {
    return ApplicationGateway(
      backendAddressPools: (() {
        final guardedValue = map['backendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(
            guardedValue,
            (value) => ApplicationGatewayBackendAddressPool.fromMap(
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
