// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_pool.dart';

/// Application Gateway the CG profile will use to interact with CGs in a backend pool
class ApplicationGateway {
  /// List of Application Gateway Backend Address Pools.
  final List<ApplicationGatewayBackendAddressPool>? backendAddressPools;
  /// The Application Gateway ARM resource Id.
  final String? resource;

  /// Creates a new [ApplicationGateway].
  /// [backendAddressPools] List of Application Gateway Backend Address Pools.
  /// [resource] The Application Gateway ARM resource Id.
  ApplicationGateway({
    this.backendAddressPools,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPools': ?backendAddressPools == null ? null : pulumi.Input.encodeList<ApplicationGatewayBackendAddressPool, Map<String, dynamic>>(backendAddressPools!, (value) => value.toMap()),
      'resource': ?resource,
    };
  }

  factory ApplicationGateway.fromMap(Map<String, dynamic> map) {
    return ApplicationGateway(
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(map['backendAddressPools'], (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>())),
      resource: map['resource'] == null ? null : map['resource'] as String,
    );
  }
}

