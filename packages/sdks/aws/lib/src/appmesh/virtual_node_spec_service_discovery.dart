// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_service_discovery_aws_cloud_map.dart';
import 'virtual_node_spec_service_discovery_dns.dart';

class VirtualNodeSpecServiceDiscovery {
  /// Any AWS Cloud Map information for the virtual node. See `spec.service_discovery.aws_cloud_map` Block for details.
  final pulumi.Input<VirtualNodeSpecServiceDiscoveryAwsCloudMap>? awsCloudMap;
  /// DNS service name for the virtual node. See `spec.service_discovery.dns` Block for details.
  final pulumi.Input<VirtualNodeSpecServiceDiscoveryDns>? dns;

  /// Creates a new [VirtualNodeSpecServiceDiscovery].
  /// [awsCloudMap] Any AWS Cloud Map information for the virtual node. See `spec.service_discovery.aws_cloud_map` Block for details.
  /// [dns] DNS service name for the virtual node. See `spec.service_discovery.dns` Block for details.
  const VirtualNodeSpecServiceDiscovery({
    this.awsCloudMap,
    this.dns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsCloudMap': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecServiceDiscoveryAwsCloudMap, Map<String, dynamic>>(awsCloudMap, (value) => value.toMap()),
      'dns': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecServiceDiscoveryDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecServiceDiscovery(
      awsCloudMap: (() { final guardedValue = map['awsCloudMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecServiceDiscoveryDns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
