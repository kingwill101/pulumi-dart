// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_instance_model.dart';

class GetClustersCluster {
  /// The id of acl.
  final String aclId;
  /// The version of app.
  final String appVersion;
  /// ID of the MSE Cluster.
  final String clusterId;
  /// ID of the OOS Executions.
  final String clusterName;
  /// The type of MSE Cluster.
  final String clusterType;
  /// The num of cpu.
  final int cpu;
  /// The health status of the instance.
  final String healthStatus;
  /// ID of the MSE Cluster.
  final String id;
  /// Time-consuming to create.
  final int initCostTime;
  /// The count of instance.
  final int instanceCount;
  /// ID of the MSE Cluster.
  final String instanceId;
  /// The list of instance nodes.
  final List<GetClustersClusterInstanceModel> instanceModels;
  /// The address of public network.
  final String internetAddress;
  /// The domain of public network.
  final String internetDomain;
  /// The port of public network.
  final String internetPort;
  /// The address of private network.
  final String intranetAddress;
  /// The domain of private network.
  final String intranetDomain;
  /// The port of private network.
  final String intranetPort;
  /// The memory size.
  final int memoryCapacity;
  /// The type of payment.
  final String payInfo;
  /// The public network bandwidth.
  final String pubNetworkFlow;
  /// The status of MSE Cluster. Valid: `DESTROY_FAILED`, `DESTROY_ING`, `DESTROY_SUCCESS`, `INIT_FAILED`, `INIT_ING`, `INIT_SUCCESS`, `INIT_TIME_OUT`, `RESTART_FAILED`, `RESTART_ING`, `RESTART_SUCCESS`, `SCALE_FAILED`, `SCALE_ING`, `SCALE_SUCCESS`
  final String status;

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
  GetClustersCluster({
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
      'instanceModels': pulumi.Input.encodeList<GetClustersClusterInstanceModel, Map<String, dynamic>>(instanceModels, (value) => value.toMap()),
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
      aclId: map['aclId'] as String,
      appVersion: map['appVersion'] as String,
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      clusterType: map['clusterType'] as String,
      cpu: map['cpu'] as int,
      healthStatus: map['healthStatus'] as String,
      id: map['id'] as String,
      initCostTime: map['initCostTime'] as int,
      instanceCount: map['instanceCount'] as int,
      instanceId: map['instanceId'] as String,
      instanceModels: pulumi.Input.decodeList<GetClustersClusterInstanceModel>(map['instanceModels'], (value) => GetClustersClusterInstanceModel.fromMap((value as Map).cast<String, dynamic>())),
      internetAddress: map['internetAddress'] as String,
      internetDomain: map['internetDomain'] as String,
      internetPort: map['internetPort'] as String,
      intranetAddress: map['intranetAddress'] as String,
      intranetDomain: map['intranetDomain'] as String,
      intranetPort: map['intranetPort'] as String,
      memoryCapacity: map['memoryCapacity'] as int,
      payInfo: map['payInfo'] as String,
      pubNetworkFlow: map['pubNetworkFlow'] as String,
      status: map['status'] as String,
    );
  }
}

