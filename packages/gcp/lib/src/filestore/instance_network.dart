// ignore_for_file: unused_element, unnecessary_cast

import 'instance_network_psc_config.dart';

class InstanceNetwork {
  /// The network connect mode of the Filestore instance.
  /// If not provided, the connect mode defaults to
  /// DIRECT_PEERING.
  /// Default value is `DIRECT_PEERING`.
  /// Possible values are: `DIRECT_PEERING`, `PRIVATE_SERVICE_ACCESS`, `PRIVATE_SERVICE_CONNECT`.
  final String? connectMode;

  /// (Output)
  /// A list of IPv4 or IPv6 addresses.
  final List<String>? ipAddresses;

  /// IP versions for which the instance has
  /// IP addresses assigned.
  /// Each value may be one of: `ADDRESS_MODE_UNSPECIFIED`, `MODE_IPV4`, `MODE_IPV6`.
  final List<String> modes;

  /// The name of the GCE VPC network to which the
  /// instance is connected.
  final String network;

  /// Private Service Connect configuration.
  /// Should only be set when connect_mode is PRIVATE_SERVICE_CONNECT.
  /// Structure is documented below.
  final InstanceNetworkPscConfig? pscConfig;

  /// A /29 CIDR block that identifies the range of IP
  /// addresses reserved for this instance.
  final String? reservedIpRange;

  /// Creates a new [InstanceNetwork].
  /// [connectMode] The network connect mode of the Filestore instance.
  /// [ipAddresses] (Output)
  /// [modes] IP versions for which the instance has
  /// [network] The name of the GCE VPC network to which the
  /// [pscConfig] Private Service Connect configuration.
  /// [reservedIpRange] A /29 CIDR block that identifies the range of IP
  InstanceNetwork({
    this.connectMode,
    this.ipAddresses,
    required this.modes,
    required this.network,
    this.pscConfig,
    this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectMode': ?connectMode,
      'ipAddresses': ?ipAddresses,
      'modes': modes,
      'network': network,
      'pscConfig': ?pscConfig == null ? null : pscConfig!.toMap(),
      'reservedIpRange': ?reservedIpRange,
    };
  }

  factory InstanceNetwork.fromMap(Map<String, dynamic> map) {
    return InstanceNetwork(
      connectMode: map['connectMode'] == null
          ? null
          : map['connectMode'] as String,
      ipAddresses: map['ipAddresses'] == null
          ? null
          : (map['ipAddresses'] as List).cast<String>(),
      modes: (map['modes'] as List).cast<String>(),
      network: map['network'] as String,
      pscConfig: map['pscConfig'] == null
          ? null
          : InstanceNetworkPscConfig.fromMap(
              (map['pscConfig'] as Map).cast<String, dynamic>(),
            ),
      reservedIpRange: map['reservedIpRange'] == null
          ? null
          : map['reservedIpRange'] as String,
    );
  }
}
