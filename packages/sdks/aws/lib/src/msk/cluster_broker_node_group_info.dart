// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info_connectivity_info.dart';
import 'cluster_broker_node_group_info_storage_info.dart';

class ClusterBrokerNodeGroupInfo {
  /// The distribution of broker nodes across availability zones ([documentation](https://docs.aws.amazon.com/msk/1.0/apireference/clusters.html#clusters-model-brokerazdistribution)). Currently, the only valid value is `DEFAULT`.
  final pulumi.Input<String>? azDistribution;

  /// A list of subnets to connect to in client VPC ([documentation](https://docs.aws.amazon.com/msk/1.0/apireference/clusters.html#clusters-prop-brokernodegroupinfo-clientsubnets)).
  final pulumi.Input<List<String>> clientSubnets;

  /// Information about the cluster access configuration. See broker_node_group_info connectivity_info Argument Reference below. For security reasons, you can't turn on public access while creating an MSK cluster. However, you can update an existing cluster to make it publicly accessible. You can also create a new cluster and then update it to make it publicly accessible ([documentation](https://docs.aws.amazon.com/msk/latest/developerguide/public-access.html)).
  final pulumi.Input<ClusterBrokerNodeGroupInfoConnectivityInfo>?
  connectivityInfo;

  /// Specify the instance type to use for the kafka brokersE.g., kafka.m5.large. ([Pricing info](https://aws.amazon.com/msk/pricing/))
  final pulumi.Input<String> instanceType;

  /// A list of the security groups to associate with the elastic network interfaces to control who can communicate with the cluster.
  final pulumi.Input<List<String>> securityGroups;

  /// A block that contains information about storage volumes attached to MSK broker nodes. See broker_node_group_info storage_info Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfoStorageInfo>? storageInfo;

  /// Creates a new [ClusterBrokerNodeGroupInfo].
  /// [azDistribution] The distribution of broker nodes across availability zones ([documentation](https://docs.aws.amazon.com/msk/1.0/apireference/clusters.html#clusters-model-brokerazdistribution)). Currently, the only valid value is `DEFAULT`.
  /// [clientSubnets] A list of subnets to connect to in client VPC ([documentation](https://docs.aws.amazon.com/msk/1.0/apireference/clusters.html#clusters-prop-brokernodegroupinfo-clientsubnets)).
  /// [connectivityInfo] Information about the cluster access configuration. See broker_node_group_info connectivity_info Argument Reference below. For security reasons, you can't turn on public access while creating an MSK cluster. However, you can update an existing cluster to make it publicly accessible. You can also create a new cluster and then update it to make it publicly accessible ([documentation](https://docs.aws.amazon.com/msk/latest/developerguide/public-access.html)).
  /// [instanceType] Specify the instance type to use for the kafka brokersE.g., kafka.m5.large. ([Pricing info](https://aws.amazon.com/msk/pricing/))
  /// [securityGroups] A list of the security groups to associate with the elastic network interfaces to control who can communicate with the cluster.
  /// [storageInfo] A block that contains information about storage volumes attached to MSK broker nodes. See broker_node_group_info storage_info Argument Reference below.
  ClusterBrokerNodeGroupInfo({
    this.azDistribution,
    required this.clientSubnets,
    this.connectivityInfo,
    required this.instanceType,
    required this.securityGroups,
    this.storageInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azDistribution': ?azDistribution,
      'clientSubnets': clientSubnets,
      'connectivityInfo':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterBrokerNodeGroupInfoConnectivityInfo,
            Map<String, dynamic>
          >(connectivityInfo, (value) => value.toMap()),
      'instanceType': instanceType,
      'securityGroups': securityGroups,
      'storageInfo':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterBrokerNodeGroupInfoStorageInfo,
            Map<String, dynamic>
          >(storageInfo, (value) => value.toMap()),
    };
  }

  factory ClusterBrokerNodeGroupInfo.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfo(
      azDistribution: (() {
        final guardedValue = map['azDistribution'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSubnets: pulumi.Input.fromValue(
        (map['clientSubnets'] as List).cast<String>(),
      ),
      connectivityInfo: (() {
        final guardedValue = map['connectivityInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterBrokerNodeGroupInfoConnectivityInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      securityGroups: pulumi.Input.fromValue(
        (map['securityGroups'] as List).cast<String>(),
      ),
      storageInfo: (() {
        final guardedValue = map['storageInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterBrokerNodeGroupInfoStorageInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
