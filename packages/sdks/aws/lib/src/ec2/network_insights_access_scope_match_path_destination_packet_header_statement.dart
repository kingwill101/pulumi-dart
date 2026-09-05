// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAccessScopeMatchPathDestinationPacketHeaderStatement {
  /// Set of destination addresses.
  final pulumi.Input<List<String>?>? destinationAddresses;
  /// Set of destination ports.
  final pulumi.Input<List<String>?>? destinationPorts;
  /// Set of destination prefix lists.
  final pulumi.Input<List<String>?>? destinationPrefixLists;
  /// Set of protocols.
  /// Valid values are `tcp` and `udp`.
  final pulumi.Input<List<String>?>? protocols;
  /// Set of source addresses.
  final pulumi.Input<List<String>?>? sourceAddresses;
  /// Set of source ports.
  final pulumi.Input<List<String>?>? sourcePorts;
  /// Set of source prefix lists.
  final pulumi.Input<List<String>?>? sourcePrefixLists;

  /// Creates a new [NetworkInsightsAccessScopeMatchPathDestinationPacketHeaderStatement].
  /// [destinationAddresses] Set of destination addresses.
  /// [destinationPorts] Set of destination ports.
  /// [destinationPrefixLists] Set of destination prefix lists.
  /// [protocols] Set of protocols.
  /// [sourceAddresses] Set of source addresses.
  /// [sourcePorts] Set of source ports.
  /// [sourcePrefixLists] Set of source prefix lists.
  const NetworkInsightsAccessScopeMatchPathDestinationPacketHeaderStatement({
    this.destinationAddresses,
    this.destinationPorts,
    this.destinationPrefixLists,
    this.protocols,
    this.sourceAddresses,
    this.sourcePorts,
    this.sourcePrefixLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationAddresses': ?destinationAddresses,
      'destinationPorts': ?destinationPorts,
      'destinationPrefixLists': ?destinationPrefixLists,
      'protocols': ?protocols,
      'sourceAddresses': ?sourceAddresses,
      'sourcePorts': ?sourcePorts,
      'sourcePrefixLists': ?sourcePrefixLists,
    };
  }

  factory NetworkInsightsAccessScopeMatchPathDestinationPacketHeaderStatement.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAccessScopeMatchPathDestinationPacketHeaderStatement(
      destinationAddresses: (() { final guardedValue = map['destinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPrefixLists: (() { final guardedValue = map['destinationPrefixLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourcePorts: (() { final guardedValue = map['sourcePorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourcePrefixLists: (() { final guardedValue = map['sourcePrefixLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
