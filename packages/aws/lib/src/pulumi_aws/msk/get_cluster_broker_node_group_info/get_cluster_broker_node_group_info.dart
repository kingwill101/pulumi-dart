// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_broker_node_group_info_connectivity_info/get_cluster_broker_node_group_info_connectivity_info.dart';
import '../get_cluster_broker_node_group_info_storage_info/get_cluster_broker_node_group_info_storage_info.dart';

class GetClusterBrokerNodeGroupInfo {
  final String azDistribution;
  final List<String> clientSubnets;
  final List<GetClusterBrokerNodeGroupInfoConnectivityInfo> connectivityInfos;
  final String instanceType;
  final List<String> securityGroups;
  final List<GetClusterBrokerNodeGroupInfoStorageInfo> storageInfos;

  GetClusterBrokerNodeGroupInfo({
    required this.azDistribution,
    required this.clientSubnets,
    required this.connectivityInfos,
    required this.instanceType,
    required this.securityGroups,
    required this.storageInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['azDistribution'] = azDistribution;
    map['clientSubnets'] = clientSubnets;
    map['connectivityInfos'] = Input.encodeList<
        GetClusterBrokerNodeGroupInfoConnectivityInfo,
        Map<String, dynamic>>(connectivityInfos, (value) => value.toMap());
    map['instanceType'] = instanceType;
    map['securityGroups'] = securityGroups;
    map['storageInfos'] = Input.encodeList<
        GetClusterBrokerNodeGroupInfoStorageInfo,
        Map<String, dynamic>>(storageInfos, (value) => value.toMap());
    return map;
  }

  factory GetClusterBrokerNodeGroupInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfo(
      azDistribution: map['azDistribution'] as String,
      clientSubnets: (map['clientSubnets'] as List).cast<String>(),
      connectivityInfos:
          Input.decodeList<GetClusterBrokerNodeGroupInfoConnectivityInfo>(
              map['connectivityInfos'],
              (value) => GetClusterBrokerNodeGroupInfoConnectivityInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      storageInfos: Input.decodeList<GetClusterBrokerNodeGroupInfoStorageInfo>(
          map['storageInfos'],
          (value) => GetClusterBrokerNodeGroupInfoStorageInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
