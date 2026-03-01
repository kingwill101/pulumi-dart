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
    pulumi.Output<int>? clusterImportStatus,
    pulumi.Output<String>? clusterName,
    pulumi.Output<int>? clusterType,
    pulumi.Output<String>? csClusterId,
    pulumi.Output<String>? namespaceId,
    pulumi.Output<int>? networkMode,
    pulumi.Output<String>? vpcId,
  }) :
      clusterImportStatus = pulumi.Input.asOptionalInput<int>(clusterImportStatus),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterType = pulumi.Input.asOptionalInput<int>(clusterType),
      csClusterId = pulumi.Input.asOptionalInput<String>(csClusterId),
      namespaceId = pulumi.Input.asOptionalInput<String>(namespaceId),
      networkMode = pulumi.Input.asOptionalInput<int>(networkMode),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      clusterImportStatus: map['clusterImportStatus'] == null ? null : pulumi.Output.create<int>(map['clusterImportStatus'] as int),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<int>(map['clusterType'] as int),
      csClusterId: map['csClusterId'] == null ? null : pulumi.Output.create<String>(map['csClusterId'] as String),
      namespaceId: map['namespaceId'] == null ? null : pulumi.Output.create<String>(map['namespaceId'] as String),
      networkMode: map['networkMode'] == null ? null : pulumi.Output.create<int>(map['networkMode'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

