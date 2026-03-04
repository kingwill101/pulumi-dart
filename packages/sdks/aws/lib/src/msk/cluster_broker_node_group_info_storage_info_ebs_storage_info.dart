// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info_storage_info_ebs_storage_info_provisioned_throughput.dart';

class ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo {
  /// A block that contains EBS volume provisioned throughput information. To provision storage throughput, you must choose broker type kafka.m5.4xlarge or larger. See ebs_storage_info provisioned_throughput Argument Reference below.
  final pulumi.Input<
    ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput
  >?
  provisionedThroughput;

  /// The size in GiB of the EBS volume for the data drive on each broker node. Minimum value of `1` and maximum value of `16384`.
  final pulumi.Input<int>? volumeSize;

  /// Creates a new [ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo].
  /// [provisionedThroughput] A block that contains EBS volume provisioned throughput information. To provision storage throughput, you must choose broker type kafka.m5.4xlarge or larger. See ebs_storage_info provisioned_throughput Argument Reference below.
  /// [volumeSize] The size in GiB of the EBS volume for the data drive on each broker node. Minimum value of `1` and maximum value of `16384`.
  ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo({
    this.provisionedThroughput,
    this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisionedThroughput':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput,
            Map<String, dynamic>
          >(provisionedThroughput, (value) => value.toMap()),
      'volumeSize': ?volumeSize,
    };
  }

  factory ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo(
      provisionedThroughput: (() {
        final guardedValue = map['provisionedThroughput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      volumeSize: (() {
        final guardedValue = map['volumeSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
