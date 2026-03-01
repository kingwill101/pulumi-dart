// ignore_for_file: unused_element, unnecessary_cast


class GetPrometheusPromethei {
  /// (Available since v1.214.0) The authorization token. **Note:** `auth_token` takes effect only if `enable_details` is set to `true`.
  final String authToken;
  /// The ID of the cluster.
  final String clusterId;
  /// The name of the cluster.
  final String clusterName;
  /// The type of the cluster.
  final String clusterType;
  /// The ID of the Grafana workspace.
  final String grafanaInstanceId;
  /// (Available since v1.214.0) The public URL for the HTTP API. **Note:** `http_api_inter_url` takes effect only if `enable_details` is set to `true`.
  final String httpApiInterUrl;
  /// (Available since v1.214.0) The internal URL for the HTTP API. **Note:** `http_api_intra_url` takes effect only if `enable_details` is set to `true`.
  final String httpApiIntraUrl;
  /// The ID of the Prometheus.
  final String id;
  /// (Available since v1.214.0) The public URL for Pushgateway. **Note:** `push_gate_way_inter_url` takes effect only if `enable_details` is set to `true`.
  final String pushGateWayInterUrl;
  /// (Available since v1.214.0) The internal URL for Pushgateway. **Note:** `push_gate_way_intra_url` takes effect only if `enable_details` is set to `true`.
  final String pushGateWayIntraUrl;
  /// (Available since v1.214.0) The public URL for remote read. **Note:** `remote_read_inter_url` takes effect only if `enable_details` is set to `true`.
  final String remoteReadInterUrl;
  /// (Available since v1.214.0) The internal URL for remote read. **Note:** `remote_read_intra_url` takes effect only if `enable_details` is set to `true`.
  final String remoteReadIntraUrl;
  /// (Available since v1.214.0) The public URL for remote write. **Note:** `remote_write_inter_url` takes effect only if `enable_details` is set to `true`.
  final String remoteWriteInterUrl;
  /// (Available since v1.214.0) The internal URL for remote write. **Note:** `remote_write_intra_url` takes effect only if `enable_details` is set to `true`.
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
  /// The ID of the VSwitch.
  final String vswitchId;

  /// Creates a new [GetPrometheusPromethei].
  /// [authToken] (Available since v1.214.0) The authorization token. **Note:** `auth_token` takes effect only if `enable_details` is set to `true`.
  /// [clusterId] The ID of the cluster.
  /// [clusterName] The name of the cluster.
  /// [clusterType] The type of the cluster.
  /// [grafanaInstanceId] The ID of the Grafana workspace.
  /// [httpApiInterUrl] (Available since v1.214.0) The public URL for the HTTP API. **Note:** `http_api_inter_url` takes effect only if `enable_details` is set to `true`.
  /// [httpApiIntraUrl] (Available since v1.214.0) The internal URL for the HTTP API. **Note:** `http_api_intra_url` takes effect only if `enable_details` is set to `true`.
  /// [id] The ID of the Prometheus.
  /// [pushGateWayInterUrl] (Available since v1.214.0) The public URL for Pushgateway. **Note:** `push_gate_way_inter_url` takes effect only if `enable_details` is set to `true`.
  /// [pushGateWayIntraUrl] (Available since v1.214.0) The internal URL for Pushgateway. **Note:** `push_gate_way_intra_url` takes effect only if `enable_details` is set to `true`.
  /// [remoteReadInterUrl] (Available since v1.214.0) The public URL for remote read. **Note:** `remote_read_inter_url` takes effect only if `enable_details` is set to `true`.
  /// [remoteReadIntraUrl] (Available since v1.214.0) The internal URL for remote read. **Note:** `remote_read_intra_url` takes effect only if `enable_details` is set to `true`.
  /// [remoteWriteInterUrl] (Available since v1.214.0) The public URL for remote write. **Note:** `remote_write_inter_url` takes effect only if `enable_details` is set to `true`.
  /// [remoteWriteIntraUrl] (Available since v1.214.0) The internal URL for remote write. **Note:** `remote_write_intra_url` takes effect only if `enable_details` is set to `true`.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityGroupId] The ID of the security group.
  /// [subClustersJson] The child instance json string of the globalView instance.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The ID of the VSwitch.
  GetPrometheusPromethei({
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

  factory GetPrometheusPromethei.fromMap(Map<String, dynamic> map) {
    return GetPrometheusPromethei(
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

