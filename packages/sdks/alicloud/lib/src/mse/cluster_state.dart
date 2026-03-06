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
  const ClusterState({
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
      aclEntryLists: (() { final guardedValue = map['aclEntryLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      appVersion: (() { final guardedValue = map['appVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterAliasName: (() { final guardedValue = map['clusterAliasName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterSpecification: (() { final guardedValue = map['clusterSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionType: (() { final guardedValue = map['connectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mseVersion: (() { final guardedValue = map['mseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      netType: (() { final guardedValue = map['netType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateSlbSpecification: (() { final guardedValue = map['privateSlbSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubNetworkFlow: (() { final guardedValue = map['pubNetworkFlow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubSlbSpecification: (() { final guardedValue = map['pubSlbSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestPars: (() { final guardedValue = map['requestPars']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      versionCode: (() { final guardedValue = map['versionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

