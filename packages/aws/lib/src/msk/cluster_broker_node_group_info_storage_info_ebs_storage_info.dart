// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_broker_node_group_info_storage_info_ebs_storage_info_provisioned_throughput.dart';

class ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo {
  /// A block that contains EBS volume provisioned throughput information. To provision storage throughput, you must choose broker type kafka.m5.4xlarge or larger. See ebs_storage_info provisioned_throughput Argument Reference below.
  final ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput?
      provisionedThroughput;

  /// The size in GiB of the EBS volume for the data drive on each broker node. Minimum value of `1` and maximum value of `16384`.
  final int? volumeSize;

  /// Creates a new [ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo].
  /// [provisionedThroughput] A block that contains EBS volume provisioned throughput information. To provision storage throughput, you must choose broker type kafka.m5.4xlarge or larger. See ebs_storage_info provisioned_throughput Argument Reference below.
  /// [volumeSize] The size in GiB of the EBS volume for the data drive on each broker node. Minimum value of `1` and maximum value of `16384`.
  ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo({
    this.provisionedThroughput,
    this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = provisionedThroughputValue.toMap();
    }
    final volumeSizeValue = volumeSize;
    if (volumeSizeValue != null) {
      map['volumeSize'] = volumeSizeValue;
    }
    return map;
  }

  factory ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo.fromMap(
      Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo(
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput
              .fromMap((map['provisionedThroughput'] as Map)
                  .cast<String, dynamic>()),
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
    );
  }
}
