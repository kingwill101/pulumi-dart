// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_prometheus_prometheus_args_doc}
/// The set of arguments for Prometheus.
/// {@endtemplate}
/// {@macro pulumi_arms_prometheus_prometheus_args_doc}
class PrometheusArgs {
  /// The ID of the Kubernetes cluster. This parameter is required, if you set `cluster_type` to `aliyun-cs`.
  final pulumi.Input<String>? clusterId;
  /// The name of the created cluster. This parameter is required, if you set `cluster_type` to `remote-write`, `ecs` or `global-view`.
  final pulumi.Input<String>? clusterName;
  /// The type of the Prometheus instance. Valid values: `remote-write`, `ecs`, `global-view`, `aliyun-cs`.
  final pulumi.Input<String> clusterType;
  /// The ID of the Grafana dedicated instance. When using the shared version of Grafana, you can set `grafana_instance_id` to `free`.
  final pulumi.Input<String> grafanaInstanceId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the security group. This parameter is required, if you set `cluster_type` to `ecs` or `aliyun-cs`(ASK instance).
  final pulumi.Input<String>? securityGroupId;
  /// The child instance json string of the globalView instance.
  final pulumi.Input<String>? subClustersJson;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC. This parameter is required, if you set `cluster_type` to `ecs` or `aliyun-cs`(ASK instance).
  final pulumi.Input<String>? vpcId;
  /// The ID of the VSwitch. This parameter is required, if you set `cluster_type` to `ecs` or `aliyun-cs`(ASK instance).
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [PrometheusArgs].
  /// [clusterId] The ID of the Kubernetes cluster. This parameter is required, if you set `cluster_type` to `aliyun-cs`.
  /// [clusterName] The name of the created cluster. This parameter is required, if you set `cluster_type` to `remote-write`, `ecs` or `global-view`.
  /// [clusterType] The type of the Prometheus instance. Valid values: `remote-write`, `ecs`, `global-view`, `aliyun-cs`.
  /// [grafanaInstanceId] The ID of the Grafana dedicated instance. When using the shared version of Grafana, you can set `grafana_instance_id` to `free`.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityGroupId] The ID of the security group. This parameter is required, if you set `cluster_type` to `ecs` or `aliyun-cs`(ASK instance).
  /// [subClustersJson] The child instance json string of the globalView instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the VPC. This parameter is required, if you set `cluster_type` to `ecs` or `aliyun-cs`(ASK instance).
  /// [vswitchId] The ID of the VSwitch. This parameter is required, if you set `cluster_type` to `ecs` or `aliyun-cs`(ASK instance).
  const PrometheusArgs({
    this.clusterId,
    this.clusterName,
    required this.clusterType,
    required this.grafanaInstanceId,
    this.resourceGroupId,
    this.securityGroupId,
    this.subClustersJson,
    this.tags,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'clusterName': ?clusterName,
      'clusterType': clusterType,
      'grafanaInstanceId': grafanaInstanceId,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'subClustersJson': ?subClustersJson,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory PrometheusArgs.fromMap(Map<String, dynamic> map) {
    return PrometheusArgs(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      grafanaInstanceId: pulumi.Input.fromValue(map['grafanaInstanceId'] as String),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subClustersJson: (() { final guardedValue = map['subClustersJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

