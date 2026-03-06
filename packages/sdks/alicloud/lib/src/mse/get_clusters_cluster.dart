// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_instance_model.dart';

class GetClustersCluster {
  /// The id of acl.
  final pulumi.Input<String> aclId;
  /// The version of app.
  final pulumi.Input<String> appVersion;
  /// ID of the MSE Cluster.
  final pulumi.Input<String> clusterId;
  /// ID of the OOS Executions.
  final pulumi.Input<String> clusterName;
  /// The type of MSE Cluster.
  final pulumi.Input<String> clusterType;
  /// The num of cpu.
  final pulumi.Input<int> cpu;
  /// The health status of the instance.
  final pulumi.Input<String> healthStatus;
  /// ID of the MSE Cluster.
  final pulumi.Input<String> id;
  /// Time-consuming to create.
  final pulumi.Input<int> initCostTime;
  /// The count of instance.
  final pulumi.Input<int> instanceCount;
  /// ID of the MSE Cluster.
  final pulumi.Input<String> instanceId;
  /// The list of instance nodes.
  final pulumi.Input<List<GetClustersClusterInstanceModel>> instanceModels;
  /// The address of public network.
  final pulumi.Input<String> internetAddress;
  /// The domain of public network.
  final pulumi.Input<String> internetDomain;
  /// The port of public network.
  final pulumi.Input<String> internetPort;
  /// The address of private network.
  final pulumi.Input<String> intranetAddress;
  /// The domain of private network.
  final pulumi.Input<String> intranetDomain;
  /// The port of private network.
  final pulumi.Input<String> intranetPort;
  /// The memory size.
  final pulumi.Input<int> memoryCapacity;
  /// The type of payment.
  final pulumi.Input<String> payInfo;
  /// The public network bandwidth.
  final pulumi.Input<String> pubNetworkFlow;
  /// The status of MSE Cluster. Valid: `DESTROY_FAILED`, `DESTROY_ING`, `DESTROY_SUCCESS`, `INIT_FAILED`, `INIT_ING`, `INIT_SUCCESS`, `INIT_TIME_OUT`, `RESTART_FAILED`, `RESTART_ING`, `RESTART_SUCCESS`, `SCALE_FAILED`, `SCALE_ING`, `SCALE_SUCCESS`
  final pulumi.Input<String> status;

  /// Creates a new [GetClustersCluster].
  /// [aclId] The id of acl.
  /// [appVersion] The version of app.
  /// [clusterId] ID of the MSE Cluster.
  /// [clusterName] ID of the OOS Executions.
  /// [clusterType] The type of MSE Cluster.
  /// [cpu] The num of cpu.
  /// [healthStatus] The health status of the instance.
  /// [id] ID of the MSE Cluster.
  /// [initCostTime] Time-consuming to create.
  /// [instanceCount] The count of instance.
  /// [instanceId] ID of the MSE Cluster.
  /// [instanceModels] The list of instance nodes.
  /// [internetAddress] The address of public network.
  /// [internetDomain] The domain of public network.
  /// [internetPort] The port of public network.
  /// [intranetAddress] The address of private network.
  /// [intranetDomain] The domain of private network.
  /// [intranetPort] The port of private network.
  /// [memoryCapacity] The memory size.
  /// [payInfo] The type of payment.
  /// [pubNetworkFlow] The public network bandwidth.
  /// [status] The status of MSE Cluster. Valid: `DESTROY_FAILED`, `DESTROY_ING`, `DESTROY_SUCCESS`, `INIT_FAILED`, `INIT_ING`, `INIT_SUCCESS`, `INIT_TIME_OUT`, `RESTART_FAILED`, `RESTART_ING`, `RESTART_SUCCESS`, `SCALE_FAILED`, `SCALE_ING`, `SCALE_SUCCESS`
  const GetClustersCluster({
    required this.aclId,
    required this.appVersion,
    required this.clusterId,
    required this.clusterName,
    required this.clusterType,
    required this.cpu,
    required this.healthStatus,
    required this.id,
    required this.initCostTime,
    required this.instanceCount,
    required this.instanceId,
    required this.instanceModels,
    required this.internetAddress,
    required this.internetDomain,
    required this.internetPort,
    required this.intranetAddress,
    required this.intranetDomain,
    required this.intranetPort,
    required this.memoryCapacity,
    required this.payInfo,
    required this.pubNetworkFlow,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'appVersion': appVersion,
      'clusterId': clusterId,
      'clusterName': clusterName,
      'clusterType': clusterType,
      'cpu': cpu,
      'healthStatus': healthStatus,
      'id': id,
      'initCostTime': initCostTime,
      'instanceCount': instanceCount,
      'instanceId': instanceId,
      'instanceModels': pulumi.Input.mapInputValue<List<GetClustersClusterInstanceModel>, List<Map<String, dynamic>>>(instanceModels, (value) => pulumi.Input.encodeList<GetClustersClusterInstanceModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internetAddress': internetAddress,
      'internetDomain': internetDomain,
      'internetPort': internetPort,
      'intranetAddress': intranetAddress,
      'intranetDomain': intranetDomain,
      'intranetPort': intranetPort,
      'memoryCapacity': memoryCapacity,
      'payInfo': payInfo,
      'pubNetworkFlow': pubNetworkFlow,
      'status': status,
    };
  }

  factory GetClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetClustersCluster(
      aclId: pulumi.Input.fromValue(map['aclId'] as String),
      appVersion: pulumi.Input.fromValue(map['appVersion'] as String),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      cpu: pulumi.Input.fromValue(map['cpu'] as int),
      healthStatus: pulumi.Input.fromValue(map['healthStatus'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      initCostTime: pulumi.Input.fromValue(map['initCostTime'] as int),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceModels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClustersClusterInstanceModel>(map['instanceModels']!, (value) => GetClustersClusterInstanceModel.fromMap((value as Map).cast<String, dynamic>()))),
      internetAddress: pulumi.Input.fromValue(map['internetAddress'] as String),
      internetDomain: pulumi.Input.fromValue(map['internetDomain'] as String),
      internetPort: pulumi.Input.fromValue(map['internetPort'] as String),
      intranetAddress: pulumi.Input.fromValue(map['intranetAddress'] as String),
      intranetDomain: pulumi.Input.fromValue(map['intranetDomain'] as String),
      intranetPort: pulumi.Input.fromValue(map['intranetPort'] as String),
      memoryCapacity: pulumi.Input.fromValue(map['memoryCapacity'] as int),
      payInfo: pulumi.Input.fromValue(map['payInfo'] as String),
      pubNetworkFlow: pulumi.Input.fromValue(map['pubNetworkFlow'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

