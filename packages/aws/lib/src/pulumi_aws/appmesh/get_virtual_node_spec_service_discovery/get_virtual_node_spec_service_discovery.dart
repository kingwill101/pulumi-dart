// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_service_discovery_aws_cloud_map/get_virtual_node_spec_service_discovery_aws_cloud_map.dart';
import '../get_virtual_node_spec_service_discovery_dn/get_virtual_node_spec_service_discovery_dn.dart';

class GetVirtualNodeSpecServiceDiscovery {
  final List<GetVirtualNodeSpecServiceDiscoveryAwsCloudMap> awsCloudMaps;
  final List<GetVirtualNodeSpecServiceDiscoveryDn> dns;

  GetVirtualNodeSpecServiceDiscovery({
    required this.awsCloudMaps,
    required this.dns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsCloudMaps'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecServiceDiscoveryAwsCloudMap,
        Map<String, dynamic>>(awsCloudMaps, (value) => value.toMap());
    map['dns'] = pulumi.Input.encodeList<GetVirtualNodeSpecServiceDiscoveryDn,
        Map<String, dynamic>>(dns, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecServiceDiscovery.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecServiceDiscovery(
      awsCloudMaps: pulumi.Input.decodeList<
              GetVirtualNodeSpecServiceDiscoveryAwsCloudMap>(
          map['awsCloudMaps'],
          (value) => GetVirtualNodeSpecServiceDiscoveryAwsCloudMap.fromMap(
              (value as Map).cast<String, dynamic>())),
      dns: pulumi.Input.decodeList<GetVirtualNodeSpecServiceDiscoveryDn>(
          map['dns'],
          (value) => GetVirtualNodeSpecServiceDiscoveryDn.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
