// ignore_for_file: unused_element, unnecessary_cast


class GetPrometheisPromethei {
  /// The token used to access the data source.
  final String authToken;
  /// The ID of the cluster.
  final String clusterId;
  /// The name of the cluster.
  final String clusterName;
  /// The type of the cluster.
  final String clusterType;
  /// The ID of the Grafana workspace.
  final String grafanaInstanceId;
  /// Http api public network address.
  final String httpApiInterUrl;
  /// Http api intranet address.
  final String httpApiIntraUrl;
  /// The ID of the Prometheus.
  final String id;
  /// PushGateway public network Url.
  final String pushGateWayInterUrl;
  /// PushGateway intranet Url.
  final String pushGateWayIntraUrl;
  /// Public Url of remoteRead.
  final String remoteReadInterUrl;
  /// RemoteRead intranet Url.
  final String remoteReadIntraUrl;
  /// RemoteWrite public Url.
  final String remoteWriteInterUrl;
  /// RemoteWrite Intranet Url.
  final String remoteWriteIntraUrl;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The ID of the security group.
  final String securityGroupId;
  /// The child instance json string of the globalView instance.
  final String subClustersJson;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The ID of the VPC.
  final String vpcId;
  /// The ID of the vSwitch.
  final String vswitchId;

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
  GetPrometheisPromethei({
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
      authToken: map['authToken'] as String,
      clusterId: map['clusterId'] as String,
      clusterName: map['clusterName'] as String,
      clusterType: map['clusterType'] as String,
      grafanaInstanceId: map['grafanaInstanceId'] as String,
      httpApiInterUrl: map['httpApiInterUrl'] as String,
      httpApiIntraUrl: map['httpApiIntraUrl'] as String,
      id: map['id'] as String,
      pushGateWayInterUrl: map['pushGateWayInterUrl'] as String,
      pushGateWayIntraUrl: map['pushGateWayIntraUrl'] as String,
      remoteReadInterUrl: map['remoteReadInterUrl'] as String,
      remoteReadIntraUrl: map['remoteReadIntraUrl'] as String,
      remoteWriteInterUrl: map['remoteWriteInterUrl'] as String,
      remoteWriteIntraUrl: map['remoteWriteIntraUrl'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityGroupId: map['securityGroupId'] as String,
      subClustersJson: map['subClustersJson'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

