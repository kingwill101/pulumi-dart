// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceEndpointConnectionPscAutoConnection {
  /// Output Only. Type of a PSC Connection.
  /// Possible values:
  /// CONNECTION_TYPE_DISCOVERY
  /// CONNECTION_TYPE_PRIMARY
  /// CONNECTION_TYPE_READER
  final String connectionType;
  /// Output only. The URI of the consumer side forwarding rule.
  /// Format:
  /// projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}
  final String forwardingRule;
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final String ipAddress;
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final String network;
  /// Output only. Ports of the exposed endpoint.
  final int port;
  /// Output only. The consumer project_id where the forwarding rule is created from.
  final String projectId;
  /// Output only. The PSC connection id of the forwarding rule connected to the
  /// service attachment.
  final String pscConnectionId;
  /// Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final String serviceAttachment;

  /// Creates a new [GetInstanceEndpointConnectionPscAutoConnection].
  /// [connectionType] Output Only. Type of a PSC Connection.
  /// [forwardingRule] Output only. The URI of the consumer side forwarding rule.
  /// [ipAddress] Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  /// [network] Output only. The consumer network where the IP address resides, in the form of
  /// [port] Output only. Ports of the exposed endpoint.
  /// [projectId] Output only. The consumer project_id where the forwarding rule is created from.
  /// [pscConnectionId] Output only. The PSC connection id of the forwarding rule connected to the
  /// [serviceAttachment] Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  GetInstanceEndpointConnectionPscAutoConnection({
    required this.connectionType,
    required this.forwardingRule,
    required this.ipAddress,
    required this.network,
    required this.port,
    required this.projectId,
    required this.pscConnectionId,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': connectionType,
      'forwardingRule': forwardingRule,
      'ipAddress': ipAddress,
      'network': network,
      'port': port,
      'projectId': projectId,
      'pscConnectionId': pscConnectionId,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory GetInstanceEndpointConnectionPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return GetInstanceEndpointConnectionPscAutoConnection(
      connectionType: map['connectionType'] as String,
      forwardingRule: map['forwardingRule'] as String,
      ipAddress: map['ipAddress'] as String,
      network: map['network'] as String,
      port: map['port'] as int,
      projectId: map['projectId'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}

