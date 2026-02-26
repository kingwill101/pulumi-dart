// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_broker_node_group_info_storage_info_ebs_storage_info_provisioned_throughput/cluster_broker_node_group_info_storage_info_ebs_storage_info_provisioned_throughput.dart';

class ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo {
  /// A block that contains EBS volume provisioned throughput information. To provision storage throughput, you must choose broker type kafka.m5.4xlarge or larger. See<span pulumi-lang-nodejs=" ebsStorageInfo " pulumi-lang-dotnet=" EbsStorageInfo " pulumi-lang-go=" ebsStorageInfo " pulumi-lang-python=" ebs_storage_info " pulumi-lang-yaml=" ebsStorageInfo " pulumi-lang-java=" ebsStorageInfo "> ebs_storage_info </span>provisioned_throughput Argument Reference below.
  final ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfoProvisionedThroughput?
      provisionedThroughput;

  /// The size in GiB of the EBS volume for the data drive on each broker node. Minimum value of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and maximum value of <span pulumi-lang-nodejs="`16384`" pulumi-lang-dotnet="`16384`" pulumi-lang-go="`16384`" pulumi-lang-python="`16384`" pulumi-lang-yaml="`16384`" pulumi-lang-java="`16384`">`16384`</span>.
  final int? volumeSize;

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
