// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info_storage_info_ebs_storage_info.dart';

class GetClusterBrokerNodeGroupInfoStorageInfo {
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo>> ebsStorageInfos;

  /// Creates a new [GetClusterBrokerNodeGroupInfoStorageInfo].
  /// [ebsStorageInfos] Required.
  const GetClusterBrokerNodeGroupInfoStorageInfo({
    required this.ebsStorageInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsStorageInfos': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo>, List<Map<String, dynamic>>>(ebsStorageInfos, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterBrokerNodeGroupInfoStorageInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoStorageInfo(
      ebsStorageInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo>(map['ebsStorageInfos']!, (value) => GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
