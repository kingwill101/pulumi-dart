// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info_connectivity_info.dart';
import 'get_cluster_broker_node_group_info_storage_info.dart';

class GetClusterBrokerNodeGroupInfo {
  /// Distribution of broker nodes across Availability Zones.
  final pulumi.Input<String> azDistribution;
  /// List of subnets to connect to in the client VPC.
  final pulumi.Input<List<String>> clientSubnets;
  /// Information about the cluster access configuration. See `connectivityInfo` Block for details.
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoConnectivityInfo>> connectivityInfos;
  /// Instance type used for the broker nodes.
  final pulumi.Input<String> instanceType;
  /// List of security groups to associate with the elastic network interfaces to control who can communicate with the cluster.
  final pulumi.Input<List<String>> securityGroups;
  /// Storage information for the broker nodes. See `storageInfo` Block for details.
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoStorageInfo>> storageInfos;

  /// Creates a new [GetClusterBrokerNodeGroupInfo].
  /// [azDistribution] Distribution of broker nodes across Availability Zones.
  /// [clientSubnets] List of subnets to connect to in the client VPC.
  /// [connectivityInfos] Information about the cluster access configuration. See `connectivityInfo` Block for details.
  /// [instanceType] Instance type used for the broker nodes.
  /// [securityGroups] List of security groups to associate with the elastic network interfaces to control who can communicate with the cluster.
  /// [storageInfos] Storage information for the broker nodes. See `storageInfo` Block for details.
  const GetClusterBrokerNodeGroupInfo({
    required this.azDistribution,
    required this.clientSubnets,
    required this.connectivityInfos,
    required this.instanceType,
    required this.securityGroups,
    required this.storageInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azDistribution': azDistribution,
      'clientSubnets': clientSubnets,
      'connectivityInfos': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoConnectivityInfo>, List<Map<String, dynamic>>>(connectivityInfos, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoConnectivityInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': instanceType,
      'securityGroups': securityGroups,
      'storageInfos': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoStorageInfo>, List<Map<String, dynamic>>>(storageInfos, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoStorageInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterBrokerNodeGroupInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfo(
      azDistribution: pulumi.Input.fromValue(map['azDistribution'] as String),
      clientSubnets: pulumi.Input.fromValue((map['clientSubnets'] as List).cast<String>()),
      connectivityInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoConnectivityInfo>(map['connectivityInfos']!, (value) => GetClusterBrokerNodeGroupInfoConnectivityInfo.fromMap((value as Map).cast<String, dynamic>()))),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      securityGroups: pulumi.Input.fromValue((map['securityGroups'] as List).cast<String>()),
      storageInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoStorageInfo>(map['storageInfos']!, (value) => GetClusterBrokerNodeGroupInfoStorageInfo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
