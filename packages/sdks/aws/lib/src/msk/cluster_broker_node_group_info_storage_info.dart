// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info_storage_info_ebs_storage_info.dart';

class ClusterBrokerNodeGroupInfoStorageInfo {
  /// A block that contains EBS volume information. See storage_info ebs_storage_info Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo>? ebsStorageInfo;

  /// Creates a new [ClusterBrokerNodeGroupInfoStorageInfo].
  /// [ebsStorageInfo] A block that contains EBS volume information. See storage_info ebs_storage_info Argument Reference below.
  ClusterBrokerNodeGroupInfoStorageInfo({
    this.ebsStorageInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ebsStorageInfo': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo, Map<String, dynamic>>(ebsStorageInfo, (value) => value.toMap()),
    };
  }

  factory ClusterBrokerNodeGroupInfoStorageInfo.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoStorageInfo(
      ebsStorageInfo: map['ebsStorageInfo'] == null ? null : ((ClusterBrokerNodeGroupInfoStorageInfoEbsStorageInfo.fromMap((map['ebsStorageInfo']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

