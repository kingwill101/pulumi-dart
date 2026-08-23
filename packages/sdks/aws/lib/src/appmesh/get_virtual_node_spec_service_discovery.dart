// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_service_discovery_aws_cloud_map.dart';
import 'get_virtual_node_spec_service_discovery_dn.dart';

class GetVirtualNodeSpecServiceDiscovery {
  /// AWS Cloud Map information for the virtual node. See `spec.service_discovery.aws_cloud_map` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecServiceDiscoveryAwsCloudMap>> awsCloudMaps;
  /// DNS service name for the virtual node. See `spec.service_discovery.dns` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecServiceDiscoveryDn>> dns;

  /// Creates a new [GetVirtualNodeSpecServiceDiscovery].
  /// [awsCloudMaps] AWS Cloud Map information for the virtual node. See `spec.service_discovery.aws_cloud_map` Block for details.
  /// [dns] DNS service name for the virtual node. See `spec.service_discovery.dns` Block for details.
  const GetVirtualNodeSpecServiceDiscovery({
    required this.awsCloudMaps,
    required this.dns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsCloudMaps': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecServiceDiscoveryAwsCloudMap>, List<Map<String, dynamic>>>(awsCloudMaps, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecServiceDiscoveryAwsCloudMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dns': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecServiceDiscoveryDn>, List<Map<String, dynamic>>>(dns, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecServiceDiscoveryDn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecServiceDiscovery(
      awsCloudMaps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecServiceDiscoveryAwsCloudMap>(map['awsCloudMaps']!, (value) => GetVirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap((value as Map).cast<String, dynamic>()))),
      dns: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecServiceDiscoveryDn>(map['dns']!, (value) => GetVirtualNodeSpecServiceDiscoveryDn.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
