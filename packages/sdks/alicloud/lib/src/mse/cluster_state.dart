// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The whitelist. **NOTE:** This attribute is invalid when the value of `pub_network_flow` is `0` and the value of `net_type` is `privatenet`.
  final pulumi.Input<List<String>>? aclEntryLists;
  /// (Available since v1.205.0) The application version.
  final pulumi.Input<String>? appVersion;
  /// The alias of MSE Cluster.
  final pulumi.Input<String>? clusterAliasName;
  /// (Available since v1.162.0) The cluster id of Cluster.
  final pulumi.Input<String>? clusterId;
  /// The engine specification of MSE Cluster. **NOTE:** From version 1.188.0, `cluster_specification` can be modified. If you were an international user, please use the specification version ending with `_200_c`.Valid values:
  /// - Professional Edition
  /// - `MSE_SC_1_2_60_c`: 1C2G
  /// - `MSE_SC_2_4_60_c`: 2C4G
  /// - `MSE_SC_4_8_60_c`: 4C8G
  /// - `MSE_SC_8_16_60_c`: 8C16G
  /// - `MSE_SC_16_32_60_c`:16C32G
  /// - `MSE_SC_1_2_200_c`: 1C2G
  /// - `MSE_SC_2_4_200_c`: 2C4G
  /// - `MSE_SC_4_8_200_c`: 4C8G
  /// - `MSE_SC_8_16_200_c`: 8C16G
  /// - `MSE_SC_16_32_200_c`:16C32G
  /// - Developer Edition
  /// - `MSE_SC_1_2_60_c`: 1C2G
  /// - `MSE_SC_2_4_60_c`: 2C4G
  /// - `MSE_SC_1_2_200_c`: 1C2G
  /// - `MSE_SC_2_4_200_c`: 2C4G
  /// - Serverless Edition
  /// - `MSE_SC_SERVERLESS`: Available since v1.232.0
  final pulumi.Input<String>? clusterSpecification;
  /// The type of MSE Cluster.
  final pulumi.Input<String>? clusterType;
  /// The version of MSE Cluster. See [details](https://www.alibabacloud.com/help/en/mse/developer-reference/api-mse-2019-05-31-createcluster)
  final pulumi.Input<String>? clusterVersion;
  /// The connection type. Valid values: `slb`,`single_eni`(Available since v1.232.0). If your region is one of `ap-southeast-6、us-west-1、eu-central-1、us-east-1、ap-southeast-1`,and your cluster's mse_version is `mse_dev`,please use `single_eni`.
  final pulumi.Input<String>? connectionType;
  /// The type of Disk.
  final pulumi.Input<String>? diskType;
  /// The count of instance. **NOTE:** From version 1.188.0, `instance_count` can be modified.
  final pulumi.Input<int>? instanceCount;
  /// The version of MSE. Valid values: `mse_dev` or `mse_pro` or `mse_serverless`(Available since v1.232.0).
  final pulumi.Input<String>? mseVersion;
  /// The type of network. Valid values: `privatenet` and `pubnet` and `both`(Available since v1.232.0).
  final pulumi.Input<String>? netType;
  /// Payment type: Subscription (prepaid), PayAsYouGo (postpaid). Default PayAsYouGo.
  final pulumi.Input<String>? paymentType;
  /// The specification of private network SLB.
  final pulumi.Input<String>? privateSlbSpecification;
  /// The public network bandwidth.
  final pulumi.Input<String>? pubNetworkFlow;
  /// The specification of public network SLB. Serverless Instance could ignore this parameter.
  final pulumi.Input<String>? pubSlbSpecification;
  /// The extended request parameters in the JSON format.
  final pulumi.Input<String>? requestPars;
  /// The resource group of the resource.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of MSE Cluster.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version code of MSE Cluster. You can keep the instance version up to date by setting the value to `LATEST` (Available since v1.257.0).
  final pulumi.Input<String>? versionCode;
  /// The id of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The id of VSwitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ClusterState].
  /// [aclEntryLists] The whitelist. **NOTE:** This attribute is invalid when the value of `pub_network_flow` is `0` and the value of `net_type` is `privatenet`.
  /// [appVersion] (Available since v1.205.0) The application version.
  /// [clusterAliasName] The alias of MSE Cluster.
  /// [clusterId] (Available since v1.162.0) The cluster id of Cluster.
  /// [clusterSpecification] The engine specification of MSE Cluster. **NOTE:** From version 1.188.0, `cluster_specification` can be modified. If you were an international user, please use the specification version ending with `_200_c`.Valid values:
  /// [clusterType] The type of MSE Cluster.
  /// [clusterVersion] The version of MSE Cluster. See [details](https://www.alibabacloud.com/help/en/mse/developer-reference/api-mse-2019-05-31-createcluster)
  /// [connectionType] The connection type. Valid values: `slb`,`single_eni`(Available since v1.232.0). If your region is one of `ap-southeast-6、us-west-1、eu-central-1、us-east-1、ap-southeast-1`,and your cluster's mse_version is `mse_dev`,please use `single_eni`.
  /// [diskType] The type of Disk.
  /// [instanceCount] The count of instance. **NOTE:** From version 1.188.0, `instance_count` can be modified.
  /// [mseVersion] The version of MSE. Valid values: `mse_dev` or `mse_pro` or `mse_serverless`(Available since v1.232.0).
  /// [netType] The type of network. Valid values: `privatenet` and `pubnet` and `both`(Available since v1.232.0).
  /// [paymentType] Payment type: Subscription (prepaid), PayAsYouGo (postpaid). Default PayAsYouGo.
  /// [privateSlbSpecification] The specification of private network SLB.
  /// [pubNetworkFlow] The public network bandwidth.
  /// [pubSlbSpecification] The specification of public network SLB. Serverless Instance could ignore this parameter.
  /// [requestPars] The extended request parameters in the JSON format.
  /// [resourceGroupId] The resource group of the resource.
  /// [status] The status of MSE Cluster.
  /// [tags] The tag of the resource.
  /// [versionCode] The version code of MSE Cluster. You can keep the instance version up to date by setting the value to `LATEST` (Available since v1.257.0).
  /// [vpcId] The id of the VPC.
  /// [vswitchId] The id of VSwitch.
  ClusterState({
    this.aclEntryLists,
    this.appVersion,
    this.clusterAliasName,
    this.clusterId,
    this.clusterSpecification,
    this.clusterType,
    this.clusterVersion,
    this.connectionType,
    this.diskType,
    this.instanceCount,
    this.mseVersion,
    this.netType,
    this.paymentType,
    this.privateSlbSpecification,
    this.pubNetworkFlow,
    this.pubSlbSpecification,
    this.requestPars,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.versionCode,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclEntryLists': ?aclEntryLists,
      'appVersion': ?appVersion,
      'clusterAliasName': ?clusterAliasName,
      'clusterId': ?clusterId,
      'clusterSpecification': ?clusterSpecification,
      'clusterType': ?clusterType,
      'clusterVersion': ?clusterVersion,
      'connectionType': ?connectionType,
      'diskType': ?diskType,
      'instanceCount': ?instanceCount,
      'mseVersion': ?mseVersion,
      'netType': ?netType,
      'paymentType': ?paymentType,
      'privateSlbSpecification': ?privateSlbSpecification,
      'pubNetworkFlow': ?pubNetworkFlow,
      'pubSlbSpecification': ?pubSlbSpecification,
      'requestPars': ?requestPars,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'versionCode': ?versionCode,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      aclEntryLists: map['aclEntryLists'] == null ? null : ((map['aclEntryLists'] as List).cast<String>()).input(),
      appVersion: map['appVersion'] == null ? null : (map['appVersion'] as String).input(),
      clusterAliasName: map['clusterAliasName'] == null ? null : (map['clusterAliasName'] as String).input(),
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      clusterSpecification: map['clusterSpecification'] == null ? null : (map['clusterSpecification'] as String).input(),
      clusterType: map['clusterType'] == null ? null : (map['clusterType'] as String).input(),
      clusterVersion: map['clusterVersion'] == null ? null : (map['clusterVersion'] as String).input(),
      connectionType: map['connectionType'] == null ? null : (map['connectionType'] as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      mseVersion: map['mseVersion'] == null ? null : (map['mseVersion'] as String).input(),
      netType: map['netType'] == null ? null : (map['netType'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      privateSlbSpecification: map['privateSlbSpecification'] == null ? null : (map['privateSlbSpecification'] as String).input(),
      pubNetworkFlow: map['pubNetworkFlow'] == null ? null : (map['pubNetworkFlow'] as String).input(),
      pubSlbSpecification: map['pubSlbSpecification'] == null ? null : (map['pubSlbSpecification'] as String).input(),
      requestPars: map['requestPars'] == null ? null : (map['requestPars'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      versionCode: map['versionCode'] == null ? null : (map['versionCode'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

