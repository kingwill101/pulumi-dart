// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_network_config_authorized_external_network/get_instance_network_config_authorized_external_network.dart';

class GetInstanceNetworkConfig {
  /// Name of the allocated IP range for the private IP AlloyDB instance, for example: "google-managed-services-default".
  /// If set, the instance IPs will be created from this allocated range and will override the IP range used by the parent cluster.
  /// The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final String allocatedIpRangeOverride;

  /// A list of external networks authorized to access this instance. This
  /// field is only allowed to be set when 'enable_public_ip' is set to
  /// true.
  final List<GetInstanceNetworkConfigAuthorizedExternalNetwork>
      authorizedExternalNetworks;

  /// Enabling outbound public ip for the instance.
  final bool enableOutboundPublicIp;

  /// Enabling public ip for the instance. If a user wishes to disable this,
  /// please also clear the list of the authorized external networks set on
  /// the same instance.
  final bool enablePublicIp;

  GetInstanceNetworkConfig({
    required this.allocatedIpRangeOverride,
    required this.authorizedExternalNetworks,
    required this.enableOutboundPublicIp,
    required this.enablePublicIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocatedIpRangeOverride'] = allocatedIpRangeOverride;
    map['authorizedExternalNetworks'] = Input.encodeList<
            GetInstanceNetworkConfigAuthorizedExternalNetwork,
            Map<String, dynamic>>(
        authorizedExternalNetworks, (value) => value.toMap());
    map['enableOutboundPublicIp'] = enableOutboundPublicIp;
    map['enablePublicIp'] = enablePublicIp;
    return map;
  }

  factory GetInstanceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkConfig(
      allocatedIpRangeOverride: map['allocatedIpRangeOverride'] as String,
      authorizedExternalNetworks:
          Input.decodeList<GetInstanceNetworkConfigAuthorizedExternalNetwork>(
              map['authorizedExternalNetworks'],
              (value) =>
                  GetInstanceNetworkConfigAuthorizedExternalNetwork.fromMap(
                      (value as Map).cast<String, dynamic>())),
      enableOutboundPublicIp: map['enableOutboundPublicIp'] as bool,
      enablePublicIp: map['enablePublicIp'] as bool,
    );
  }
}
