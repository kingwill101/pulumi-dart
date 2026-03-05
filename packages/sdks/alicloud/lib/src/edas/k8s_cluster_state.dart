// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering K8sCluster resources.
class K8sClusterState {
  /// The import status of cluster:
  /// `1`: success.
  /// `2`: failed.
  /// `3`: importing.
  /// `4`: deleted.
  final pulumi.Input<int>? clusterImportStatus;
  /// The name of the cluster that you want to create.
  final pulumi.Input<String>? clusterName;
  /// The type of the cluster that you want to create. Valid values only: 5: K8s cluster.
  final pulumi.Input<int>? clusterType;
  /// The ID of the alicloud container service kubernetes cluster that you want to import.
  final pulumi.Input<String>? csClusterId;
  /// The ID of the namespace where you want to import. You can call the [ListUserDefineRegion](https://www.alibabacloud.com/help/en/doc-detail/149377.htm?spm=a2c63.p38356.879954.34.331054faK2yNvC#doc-api-Edas-ListUserDefineRegion) operation to query the namespace ID.
  final pulumi.Input<String>? namespaceId;
  /// The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC.
  final pulumi.Input<int>? networkMode;
  /// The ID of the Virtual Private Cloud (VPC) for the cluster.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [K8sClusterState].
  /// [clusterImportStatus] The import status of cluster:
  /// [clusterName] The name of the cluster that you want to create.
  /// [clusterType] The type of the cluster that you want to create. Valid values only: 5: K8s cluster.
  /// [csClusterId] The ID of the alicloud container service kubernetes cluster that you want to import.
  /// [namespaceId] The ID of the namespace where you want to import. You can call the [ListUserDefineRegion](https://www.alibabacloud.com/help/en/doc-detail/149377.htm?spm=a2c63.p38356.879954.34.331054faK2yNvC#doc-api-Edas-ListUserDefineRegion) operation to query the namespace ID.
  /// [networkMode] The network type of the cluster that you want to create. Valid values: 1: classic network. 2: VPC.
  /// [vpcId] The ID of the Virtual Private Cloud (VPC) for the cluster.
  K8sClusterState({
    this.clusterImportStatus,
    this.clusterName,
    this.clusterType,
    this.csClusterId,
    this.namespaceId,
    this.networkMode,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterImportStatus': ?clusterImportStatus,
      'clusterName': ?clusterName,
      'clusterType': ?clusterType,
      'csClusterId': ?csClusterId,
      'namespaceId': ?namespaceId,
      'networkMode': ?networkMode,
      'vpcId': ?vpcId,
    };
  }

  factory K8sClusterState.fromMap(Map<String, dynamic> map) {
    return K8sClusterState(
      clusterImportStatus: (() { final guardedValue = map['clusterImportStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      csClusterId: (() { final guardedValue = map['csClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkMode: (() { final guardedValue = map['networkMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

