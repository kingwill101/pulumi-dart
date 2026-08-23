// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info_connectivity_info_public_access.dart';
import 'cluster_broker_node_group_info_connectivity_info_vpc_connectivity.dart';

class ClusterBrokerNodeGroupInfoConnectivityInfo {
  /// Network type of the cluster. Valid values are: `IPV4` or `DUAL`. Default value: `IPV4`. Only updating from `IPV4` to `DUAL` is allowed.
  final pulumi.Input<String>? networkType;
  /// Access control settings for brokers. See connectivityInfo public_access Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>? publicAccess;
  /// VPC connectivity access control for brokers. See connectivityInfo vpc_connectivity Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>? vpcConnectivity;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfo].
  /// [networkType] Network type of the cluster. Valid values are: `IPV4` or `DUAL`. Default value: `IPV4`. Only updating from `IPV4` to `DUAL` is allowed.
  /// [publicAccess] Access control settings for brokers. See connectivityInfo public_access Argument Reference below.
  /// [vpcConnectivity] VPC connectivity access control for brokers. See connectivityInfo vpc_connectivity Argument Reference below.
  const ClusterBrokerNodeGroupInfoConnectivityInfo({
    this.networkType,
    this.publicAccess,
    this.vpcConnectivity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkType': ?networkType,
      'publicAccess': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess, Map<String, dynamic>>(publicAccess, (value) => value.toMap()),
      'vpcConnectivity': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity, Map<String, dynamic>>(vpcConnectivity, (value) => value.toMap()),
    };
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfo.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfo(
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicAccess: (() { final guardedValue = map['publicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConnectivity: (() { final guardedValue = map['vpcConnectivity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
