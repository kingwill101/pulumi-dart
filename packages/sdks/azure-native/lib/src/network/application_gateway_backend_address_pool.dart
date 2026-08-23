// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address.dart';

/// Backend Address Pool of an application gateway.
class ApplicationGatewayBackendAddressPool {
  /// Backend addresses.
  final pulumi.Input<List<ApplicationGatewayBackendAddress>>? backendAddresses;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the backend address pool that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// Creates a new [ApplicationGatewayBackendAddressPool].
  /// [backendAddresses] Backend addresses.
  /// [id] Resource ID.
  /// [name] Name of the backend address pool that is unique within an Application Gateway.
  const ApplicationGatewayBackendAddressPool({
    this.backendAddresses,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddresses': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendAddress>, List<Map<String, dynamic>>>(backendAddresses, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': ?name,
    };
  }

  factory ApplicationGatewayBackendAddressPool.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayBackendAddressPool(
      backendAddresses: (() { final guardedValue = map['backendAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendAddress>(guardedValue, (value) => ApplicationGatewayBackendAddress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
