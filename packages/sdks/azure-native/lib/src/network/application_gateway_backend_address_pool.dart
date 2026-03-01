// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address.dart';

/// Backend Address Pool of an application gateway.
class ApplicationGatewayBackendAddressPool {
  /// Backend addresses.
  final List<ApplicationGatewayBackendAddress>? backendAddresses;
  /// Resource ID.
  final String? id;
  /// Name of the backend address pool that is unique within an Application Gateway.
  final String? name;

  /// Creates a new [ApplicationGatewayBackendAddressPool].
  /// [backendAddresses] Backend addresses.
  /// [id] Resource ID.
  /// [name] Name of the backend address pool that is unique within an Application Gateway.
  ApplicationGatewayBackendAddressPool({
    this.backendAddresses,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddresses': ?backendAddresses == null ? null : pulumi.Input.encodeList<ApplicationGatewayBackendAddress, Map<String, dynamic>>(backendAddresses!, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
    };
  }

  factory ApplicationGatewayBackendAddressPool.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendAddressPool(
      backendAddresses: map['backendAddresses'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayBackendAddress>(map['backendAddresses'], (value) => ApplicationGatewayBackendAddress.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

