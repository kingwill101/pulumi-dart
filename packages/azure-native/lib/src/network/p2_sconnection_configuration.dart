// ignore_for_file: unused_element, unnecessary_cast

import 'address_space.dart';
import 'routing_configuration.dart';

/// P2SConnectionConfiguration Resource.
class P2SConnectionConfiguration {
  /// Flag indicating whether the enable internet security flag is turned on for the P2S Connections or not.
  final bool? enableInternetSecurity;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final RoutingConfiguration? routingConfiguration;
  /// The reference to the address space resource which represents Address space for P2S VpnClient.
  final AddressSpace? vpnClientAddressPool;

  /// Creates a new [P2SConnectionConfiguration].
  /// [enableInternetSecurity] Flag indicating whether the enable internet security flag is turned on for the P2S Connections or not.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [vpnClientAddressPool] The reference to the address space resource which represents Address space for P2S VpnClient.
  P2SConnectionConfiguration({
    this.enableInternetSecurity,
    this.id,
    this.name,
    this.routingConfiguration,
    this.vpnClientAddressPool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInternetSecurity': ?enableInternetSecurity,
      'id': ?id,
      'name': ?name,
      'routingConfiguration': ?routingConfiguration == null ? null : routingConfiguration!.toMap(),
      'vpnClientAddressPool': ?vpnClientAddressPool == null ? null : vpnClientAddressPool!.toMap(),
    };
  }

  factory P2SConnectionConfiguration.fromMap(Map<String, dynamic> map) {
    return P2SConnectionConfiguration(
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : map['enableInternetSecurity'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      routingConfiguration: map['routingConfiguration'] == null ? null : RoutingConfiguration.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>()),
      vpnClientAddressPool: map['vpnClientAddressPool'] == null ? null : AddressSpace.fromMap((map['vpnClientAddressPool'] as Map).cast<String, dynamic>()),
    );
  }
}

