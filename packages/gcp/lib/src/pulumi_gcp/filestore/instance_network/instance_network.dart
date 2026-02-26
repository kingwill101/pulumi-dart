// ignore_for_file: unused_element, unnecessary_cast

import '../instance_network_psc_config/instance_network_psc_config.dart';

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
  /// Should only be set when<span pulumi-lang-nodejs=" connectMode " pulumi-lang-dotnet=" ConnectMode " pulumi-lang-go=" connectMode " pulumi-lang-python=" connect_mode " pulumi-lang-yaml=" connectMode " pulumi-lang-java=" connectMode "> connect_mode </span>is PRIVATE_SERVICE_CONNECT.
  /// Structure is documented below.
  final InstanceNetworkPscConfig? pscConfig;

  /// A /29 CIDR block that identifies the range of IP
  /// addresses reserved for this instance.
  final String? reservedIpRange;

  InstanceNetwork({
    this.connectMode,
    this.ipAddresses,
    required this.modes,
    required this.network,
    this.pscConfig,
    this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectModeValue = connectMode;
    if (connectModeValue != null) {
      map['connectMode'] = connectModeValue;
    }
    final ipAddressesValue = ipAddresses;
    if (ipAddressesValue != null) {
      map['ipAddresses'] = ipAddressesValue;
    }
    map['modes'] = modes;
    map['network'] = network;
    final pscConfigValue = pscConfig;
    if (pscConfigValue != null) {
      map['pscConfig'] = pscConfigValue.toMap();
    }
    final reservedIpRangeValue = reservedIpRange;
    if (reservedIpRangeValue != null) {
      map['reservedIpRange'] = reservedIpRangeValue;
    }
    return map;
  }

  factory InstanceNetwork.fromMap(Map<String, dynamic> map) {
    return InstanceNetwork(
      connectMode:
          map['connectMode'] == null ? null : map['connectMode'] as String,
      ipAddresses: map['ipAddresses'] == null
          ? null
          : (map['ipAddresses'] as List).cast<String>(),
      modes: (map['modes'] as List).cast<String>(),
      network: map['network'] as String,
      pscConfig: map['pscConfig'] == null
          ? null
          : InstanceNetworkPscConfig.fromMap(
              (map['pscConfig'] as Map).cast<String, dynamic>()),
      reservedIpRange: map['reservedIpRange'] == null
          ? null
          : map['reservedIpRange'] as String,
    );
  }
}
