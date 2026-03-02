// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_service_discovery_aws_cloud_map.dart';
import 'get_virtual_node_spec_service_discovery_dn.dart';

class GetVirtualNodeSpecServiceDiscovery {
  final pulumi.Input<List<GetVirtualNodeSpecServiceDiscoveryAwsCloudMap>> awsCloudMaps;
  final pulumi.Input<List<GetVirtualNodeSpecServiceDiscoveryDn>> dns;

  /// Creates a new [GetVirtualNodeSpecServiceDiscovery].
  /// [awsCloudMaps] Required.
  /// [dns] Required.
  GetVirtualNodeSpecServiceDiscovery({
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
      awsCloudMaps: (pulumi.Input.decodeList<GetVirtualNodeSpecServiceDiscoveryAwsCloudMap>(map['awsCloudMaps']!, (value) => GetVirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dns: (pulumi.Input.decodeList<GetVirtualNodeSpecServiceDiscoveryDn>(map['dns']!, (value) => GetVirtualNodeSpecServiceDiscoveryDn.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

