// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_broker_node_group_info_storage_info_ebs_storage_info/get_cluster_broker_node_group_info_storage_info_ebs_storage_info.dart';

class GetClusterBrokerNodeGroupInfoStorageInfo {
  final List<GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo>
      ebsStorageInfos;

  GetClusterBrokerNodeGroupInfoStorageInfo({
    required this.ebsStorageInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ebsStorageInfos'] = pulumi.Input.encodeList<
        GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo,
        Map<String, dynamic>>(ebsStorageInfos, (value) => value.toMap());
    return map;
  }

  factory GetClusterBrokerNodeGroupInfoStorageInfo.fromMap(
      Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoStorageInfo(
      ebsStorageInfos: pulumi.Input.decodeList<
              GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo>(
          map['ebsStorageInfos'],
          (value) =>
              GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
