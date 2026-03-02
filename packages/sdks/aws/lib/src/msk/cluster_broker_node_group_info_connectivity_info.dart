// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info_connectivity_info_public_access.dart';
import 'cluster_broker_node_group_info_connectivity_info_vpc_connectivity.dart';

class ClusterBrokerNodeGroupInfoConnectivityInfo {
  /// Access control settings for brokers. See connectivity_info public_access Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>? publicAccess;
  /// VPC connectivity access control for brokers. See connectivity_info vpc_connectivity Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>? vpcConnectivity;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfo].
  /// [publicAccess] Access control settings for brokers. See connectivity_info public_access Argument Reference below.
  /// [vpcConnectivity] VPC connectivity access control for brokers. See connectivity_info vpc_connectivity Argument Reference below.
  ClusterBrokerNodeGroupInfoConnectivityInfo({
    this.publicAccess,
    this.vpcConnectivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicAccess': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess, Map<String, dynamic>>(publicAccess, (value) => value.toMap()),
      'vpcConnectivity': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity, Map<String, dynamic>>(vpcConnectivity, (value) => value.toMap()),
    };
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfo.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfo(
      publicAccess: map['publicAccess'] == null ? null : ((ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap((map['publicAccess']! as Map).cast<String, dynamic>())).input()).input(),
      vpcConnectivity: map['vpcConnectivity'] == null ? null : ((ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap((map['vpcConnectivity']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

