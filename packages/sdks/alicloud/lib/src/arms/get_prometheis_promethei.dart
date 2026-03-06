// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrometheisPromethei {
  /// The token used to access the data source.
  final pulumi.Input<String> authToken;
  /// The ID of the cluster.
  final pulumi.Input<String> clusterId;
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The type of the cluster.
  final pulumi.Input<String> clusterType;
  /// The ID of the Grafana workspace.
  final pulumi.Input<String> grafanaInstanceId;
  /// Http api public network address.
  final pulumi.Input<String> httpApiInterUrl;
  /// Http api intranet address.
  final pulumi.Input<String> httpApiIntraUrl;
  /// The ID of the Prometheus.
  final pulumi.Input<String> id;
  /// PushGateway public network Url.
  final pulumi.Input<String> pushGateWayInterUrl;
  /// PushGateway intranet Url.
  final pulumi.Input<String> pushGateWayIntraUrl;
  /// Public Url of remoteRead.
  final pulumi.Input<String> remoteReadInterUrl;
  /// RemoteRead intranet Url.
  final pulumi.Input<String> remoteReadIntraUrl;
  /// RemoteWrite public Url.
  final pulumi.Input<String> remoteWriteInterUrl;
  /// RemoteWrite Intranet Url.
  final pulumi.Input<String> remoteWriteIntraUrl;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;
  /// The child instance json string of the globalView instance.
  final pulumi.Input<String> subClustersJson;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetPrometheisPromethei].
  /// [authToken] The token used to access the data source.
  /// [clusterId] The ID of the cluster.
  /// [clusterName] The name of the cluster.
  /// [clusterType] The type of the cluster.
  /// [grafanaInstanceId] The ID of the Grafana workspace.
  /// [httpApiInterUrl] Http api public network address.
  /// [httpApiIntraUrl] Http api intranet address.
  /// [id] The ID of the Prometheus.
  /// [pushGateWayInterUrl] PushGateway public network Url.
  /// [pushGateWayIntraUrl] PushGateway intranet Url.
  /// [remoteReadInterUrl] Public Url of remoteRead.
  /// [remoteReadIntraUrl] RemoteRead intranet Url.
  /// [remoteWriteInterUrl] RemoteWrite public Url.
  /// [remoteWriteIntraUrl] RemoteWrite Intranet Url.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityGroupId] The ID of the security group.
  /// [subClustersJson] The child instance json string of the globalView instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The ID of the vSwitch.
  const GetPrometheisPromethei({
    required this.authToken,
    required this.clusterId,
    required this.clusterName,
    required this.clusterType,
    required this.grafanaInstanceId,
    required this.httpApiInterUrl,
    required this.httpApiIntraUrl,
    required this.id,
    required this.pushGateWayInterUrl,
    required this.pushGateWayIntraUrl,
    required this.remoteReadInterUrl,
    required this.remoteReadIntraUrl,
    required this.remoteWriteInterUrl,
    required this.remoteWriteIntraUrl,
    required this.resourceGroupId,
    required this.securityGroupId,
    required this.subClustersJson,
    required this.tags,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': authToken,
      'clusterId': clusterId,
      'clusterName': clusterName,
      'clusterType': clusterType,
      'grafanaInstanceId': grafanaInstanceId,
      'httpApiInterUrl': httpApiInterUrl,
      'httpApiIntraUrl': httpApiIntraUrl,
      'id': id,
      'pushGateWayInterUrl': pushGateWayInterUrl,
      'pushGateWayIntraUrl': pushGateWayIntraUrl,
      'remoteReadInterUrl': remoteReadInterUrl,
      'remoteReadIntraUrl': remoteReadIntraUrl,
      'remoteWriteInterUrl': remoteWriteInterUrl,
      'remoteWriteIntraUrl': remoteWriteIntraUrl,
      'resourceGroupId': resourceGroupId,
      'securityGroupId': securityGroupId,
      'subClustersJson': subClustersJson,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetPrometheisPromethei.fromMap(Map<String, dynamic> map) {
    return GetPrometheisPromethei(
      authToken: pulumi.Input.fromValue(map['authToken'] as String),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
      grafanaInstanceId: pulumi.Input.fromValue(map['grafanaInstanceId'] as String),
      httpApiInterUrl: pulumi.Input.fromValue(map['httpApiInterUrl'] as String),
      httpApiIntraUrl: pulumi.Input.fromValue(map['httpApiIntraUrl'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      pushGateWayInterUrl: pulumi.Input.fromValue(map['pushGateWayInterUrl'] as String),
      pushGateWayIntraUrl: pulumi.Input.fromValue(map['pushGateWayIntraUrl'] as String),
      remoteReadInterUrl: pulumi.Input.fromValue(map['remoteReadInterUrl'] as String),
      remoteReadIntraUrl: pulumi.Input.fromValue(map['remoteReadIntraUrl'] as String),
      remoteWriteInterUrl: pulumi.Input.fromValue(map['remoteWriteInterUrl'] as String),
      remoteWriteIntraUrl: pulumi.Input.fromValue(map['remoteWriteIntraUrl'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      subClustersJson: pulumi.Input.fromValue(map['subClustersJson'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

