// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_service_discovery_aws_cloud_map.dart';
import 'virtual_node_spec_service_discovery_dns.dart';

class VirtualNodeSpecServiceDiscovery {
  /// Any AWS Cloud Map information for the virtual node.
  final VirtualNodeSpecServiceDiscoveryAwsCloudMap? awsCloudMap;

  /// DNS service name for the virtual node.
  final VirtualNodeSpecServiceDiscoveryDns? dns;

  /// Creates a new [VirtualNodeSpecServiceDiscovery].
  /// [awsCloudMap] Any AWS Cloud Map information for the virtual node.
  /// [dns] DNS service name for the virtual node.
  VirtualNodeSpecServiceDiscovery({
    this.awsCloudMap,
    this.dns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsCloudMapValue = awsCloudMap;
    if (awsCloudMapValue != null) {
      map['awsCloudMap'] = awsCloudMapValue.toMap();
    }
    final dnsValue = dns;
    if (dnsValue != null) {
      map['dns'] = dnsValue.toMap();
    }
    return map;
  }

  factory VirtualNodeSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecServiceDiscovery(
      awsCloudMap: map['awsCloudMap'] == null
          ? null
          : VirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap(
              (map['awsCloudMap'] as Map).cast<String, dynamic>()),
      dns: map['dns'] == null
          ? null
          : VirtualNodeSpecServiceDiscoveryDns.fromMap(
              (map['dns'] as Map).cast<String, dynamic>()),
    );
  }
}
