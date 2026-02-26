// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkPeering.
class NetworkPeeringArgs {
  /// Whether to export the custom routes to the peer network. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? exportCustomRoutes;

  /// Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  final Input<bool>? exportSubnetRoutesWithPublicIp;

  /// Whether to import the custom routes from the peer network. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? importCustomRoutes;

  /// Whether subnet routes with public IP range are imported. The default value is false. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported from peers and are not controlled by this field.
  final Input<bool>? importSubnetRoutesWithPublicIp;

  /// Name of the peering.
  final Input<String>? name;

  /// The primary network of the peering.
  final Input<String> network;

  /// The peer network in the peering. The peer network
  /// may belong to a different project.
  final Input<String> peerNetwork;

  /// Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: ["IPV4_ONLY", "IPV4_IPV6"].
  final Input<String>? stackType;

  /// The update strategy determines the semantics for updates and deletes to the peering connection configuration. The default value is INDEPENDENT. Possible values: ["INDEPENDENT", "CONSENSUS"]
  final Input<String>? updateStrategy;

  NetworkPeeringArgs({
    this.exportCustomRoutes,
    this.exportSubnetRoutesWithPublicIp,
    this.importCustomRoutes,
    this.importSubnetRoutesWithPublicIp,
    this.name,
    required this.network,
    required this.peerNetwork,
    this.stackType,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exportCustomRoutesValue = exportCustomRoutes;
    if (exportCustomRoutesValue != null) {
      map['exportCustomRoutes'] = exportCustomRoutesValue;
    }
    final exportSubnetRoutesWithPublicIpValue = exportSubnetRoutesWithPublicIp;
    if (exportSubnetRoutesWithPublicIpValue != null) {
      map['exportSubnetRoutesWithPublicIp'] =
          exportSubnetRoutesWithPublicIpValue;
    }
    final importCustomRoutesValue = importCustomRoutes;
    if (importCustomRoutesValue != null) {
      map['importCustomRoutes'] = importCustomRoutesValue;
    }
    final importSubnetRoutesWithPublicIpValue = importSubnetRoutesWithPublicIp;
    if (importSubnetRoutesWithPublicIpValue != null) {
      map['importSubnetRoutesWithPublicIp'] =
          importSubnetRoutesWithPublicIpValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    map['peerNetwork'] = peerNetwork;
    final stackTypeValue = stackType;
    if (stackTypeValue != null) {
      map['stackType'] = stackTypeValue;
    }
    final updateStrategyValue = updateStrategy;
    if (updateStrategyValue != null) {
      map['updateStrategy'] = updateStrategyValue;
    }
    return map;
  }

  factory NetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringArgs(
      exportCustomRoutes:
          Input.asOptionalInput<bool>(map['exportCustomRoutes']),
      exportSubnetRoutesWithPublicIp:
          Input.asOptionalInput<bool>(map['exportSubnetRoutesWithPublicIp']),
      importCustomRoutes:
          Input.asOptionalInput<bool>(map['importCustomRoutes']),
      importSubnetRoutesWithPublicIp:
          Input.asOptionalInput<bool>(map['importSubnetRoutesWithPublicIp']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      peerNetwork: Input.asInput<String>(map['peerNetwork']),
      stackType: Input.asOptionalInput<String>(map['stackType']),
      updateStrategy: Input.asOptionalInput<String>(map['updateStrategy']),
    );
  }
}
