// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info_storage_info_ebs_storage_info_provisioned_throughput.dart';

class GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo {
  final List<
    GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput
  >
  provisionedThroughputs;
  final int volumeSize;

  /// Creates a new [GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo].
  /// [provisionedThroughputs] Required.
  /// [volumeSize] Required.
  GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo({
    required this.provisionedThroughputs,
    required this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisionedThroughputs':
          pulumi.Input.encodeList<
            GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput,
            Map<String, dynamic>
          >(provisionedThroughputs, (value) => value.toMap()),
      'volumeSize': volumeSize,
    };
  }

  factory GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo(
      provisionedThroughputs:
          pulumi.Input.decodeList<
            GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput
          >(
            map['provisionedThroughputs'],
            (value) =>
                GetClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      volumeSize: map['volumeSize'] as int,
    );
  }
}
