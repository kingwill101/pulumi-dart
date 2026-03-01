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
    pulumi.Output<List<String>>? aclEntryLists,
    pulumi.Output<String>? appVersion,
    pulumi.Output<String>? clusterAliasName,
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? clusterSpecification,
    pulumi.Output<String>? clusterType,
    pulumi.Output<String>? clusterVersion,
    pulumi.Output<String>? connectionType,
    pulumi.Output<String>? diskType,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<String>? mseVersion,
    pulumi.Output<String>? netType,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? privateSlbSpecification,
    pulumi.Output<String>? pubNetworkFlow,
    pulumi.Output<String>? pubSlbSpecification,
    pulumi.Output<String>? requestPars,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? versionCode,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      aclEntryLists = pulumi.Input.asOptionalInput<List<String>>(aclEntryLists),
      appVersion = pulumi.Input.asOptionalInput<String>(appVersion),
      clusterAliasName = pulumi.Input.asOptionalInput<String>(clusterAliasName),
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterSpecification = pulumi.Input.asOptionalInput<String>(clusterSpecification),
      clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
      clusterVersion = pulumi.Input.asOptionalInput<String>(clusterVersion),
      connectionType = pulumi.Input.asOptionalInput<String>(connectionType),
      diskType = pulumi.Input.asOptionalInput<String>(diskType),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      mseVersion = pulumi.Input.asOptionalInput<String>(mseVersion),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      privateSlbSpecification = pulumi.Input.asOptionalInput<String>(privateSlbSpecification),
      pubNetworkFlow = pulumi.Input.asOptionalInput<String>(pubNetworkFlow),
      pubSlbSpecification = pulumi.Input.asOptionalInput<String>(pubSlbSpecification),
      requestPars = pulumi.Input.asOptionalInput<String>(requestPars),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      versionCode = pulumi.Input.asOptionalInput<String>(versionCode),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      aclEntryLists: map['aclEntryLists'] == null ? null : pulumi.Output.create<List<String>>((map['aclEntryLists'] as List).cast<String>()),
      appVersion: map['appVersion'] == null ? null : pulumi.Output.create<String>(map['appVersion'] as String),
      clusterAliasName: map['clusterAliasName'] == null ? null : pulumi.Output.create<String>(map['clusterAliasName'] as String),
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      clusterSpecification: map['clusterSpecification'] == null ? null : pulumi.Output.create<String>(map['clusterSpecification'] as String),
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<String>(map['clusterType'] as String),
      clusterVersion: map['clusterVersion'] == null ? null : pulumi.Output.create<String>(map['clusterVersion'] as String),
      connectionType: map['connectionType'] == null ? null : pulumi.Output.create<String>(map['connectionType'] as String),
      diskType: map['diskType'] == null ? null : pulumi.Output.create<String>(map['diskType'] as String),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      mseVersion: map['mseVersion'] == null ? null : pulumi.Output.create<String>(map['mseVersion'] as String),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      privateSlbSpecification: map['privateSlbSpecification'] == null ? null : pulumi.Output.create<String>(map['privateSlbSpecification'] as String),
      pubNetworkFlow: map['pubNetworkFlow'] == null ? null : pulumi.Output.create<String>(map['pubNetworkFlow'] as String),
      pubSlbSpecification: map['pubSlbSpecification'] == null ? null : pulumi.Output.create<String>(map['pubSlbSpecification'] as String),
      requestPars: map['requestPars'] == null ? null : pulumi.Output.create<String>(map['requestPars'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      versionCode: map['versionCode'] == null ? null : pulumi.Output.create<String>(map['versionCode'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

