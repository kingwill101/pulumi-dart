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
  PrometheusArgs({
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? clusterName,
    required pulumi.Output<String> clusterType,
    required pulumi.Output<String> grafanaInstanceId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? subClustersJson,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterType = pulumi.Input.asInput<String>(clusterType),
      grafanaInstanceId = pulumi.Input.asInput<String>(grafanaInstanceId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      subClustersJson = pulumi.Input.asOptionalInput<String>(subClustersJson),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterType: pulumi.Output.create<String>(map['clusterType'] as String),
      grafanaInstanceId: pulumi.Output.create<String>(map['grafanaInstanceId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      subClustersJson: map['subClustersJson'] == null ? null : pulumi.Output.create<String>(map['subClustersJson'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

