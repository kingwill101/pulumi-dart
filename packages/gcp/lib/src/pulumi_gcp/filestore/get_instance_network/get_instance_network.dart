// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_network_psc_config/get_instance_network_psc_config.dart';

class GetInstanceNetwork {
  /// The network connect mode of the Filestore instance.
  /// If not provided, the connect mode defaults to
  /// DIRECT_PEERING. Default value: "DIRECT_PEERING" Possible values: ["DIRECT_PEERING", "PRIVATE_SERVICE_ACCESS", "PRIVATE_SERVICE_CONNECT"]
  final String connectMode;

  /// A list of IPv4 or IPv6 addresses.
  final List<String> ipAddresses;

  /// IP versions for which the instance has
  /// IP addresses assigned. Possible values: ["ADDRESS_MODE_UNSPECIFIED", "MODE_IPV4", "MODE_IPV6"]
  final List<String> modes;

  /// The name of the GCE VPC network to which the
  /// instance is connected.
  final String network;

  /// Private Service Connect configuration.
  /// Should only be set when connect_mode is PRIVATE_SERVICE_CONNECT.
  final List<GetInstanceNetworkPscConfig> pscConfigs;

  /// A /29 CIDR block that identifies the range of IP
  /// addresses reserved for this instance.
  final String reservedIpRange;

  GetInstanceNetwork({
    required this.connectMode,
    required this.ipAddresses,
    required this.modes,
    required this.network,
    required this.pscConfigs,
    required this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectMode'] = connectMode;
    map['ipAddresses'] = ipAddresses;
    map['modes'] = modes;
    map['network'] = network;
    map['pscConfigs'] =
        Input.encodeList<GetInstanceNetworkPscConfig, Map<String, dynamic>>(
            pscConfigs, (value) => value.toMap());
    map['reservedIpRange'] = reservedIpRange;
    return map;
  }

  factory GetInstanceNetwork.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetwork(
      connectMode: map['connectMode'] as String,
      ipAddresses: (map['ipAddresses'] as List).cast<String>(),
      modes: (map['modes'] as List).cast<String>(),
      network: map['network'] as String,
      pscConfigs: Input.decodeList<GetInstanceNetworkPscConfig>(
          map['pscConfigs'],
          (value) => GetInstanceNetworkPscConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      reservedIpRange: map['reservedIpRange'] as String,
    );
  }
}
