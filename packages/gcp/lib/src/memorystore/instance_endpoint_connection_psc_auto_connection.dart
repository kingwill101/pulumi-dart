// ignore_for_file: unused_element, unnecessary_cast

class InstanceEndpointConnectionPscAutoConnection {
  /// (Output)
  /// Output Only. Type of a PSC Connection.
  /// Possible values:
  /// CONNECTION_TYPE_DISCOVERY
  /// CONNECTION_TYPE_PRIMARY
  /// CONNECTION_TYPE_READER
  final String? connectionType;

  /// (Output)
  /// Output only. The URI of the consumer side forwarding rule.
  /// Format:
  /// projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}
  final String? forwardingRule;

  /// (Output)
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final String? ipAddress;

  /// (Output)
  /// Output only. The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final String? network;

  /// (Output)
  /// Output only. Ports of the exposed endpoint.
  final int? port;

  /// (Output)
  /// Output only. The consumer project_id where the forwarding rule is created from.
  final String? projectId;

  /// (Output)
  /// Output only. The PSC connection id of the forwarding rule connected to the
  /// service attachment.
  final String? pscConnectionId;

  /// (Output)
  /// Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final String? serviceAttachment;

  /// Creates a new [InstanceEndpointConnectionPscAutoConnection].
  /// [connectionType] (Output)
  /// [forwardingRule] (Output)
  /// [ipAddress] (Output)
  /// [network] (Output)
  /// [port] (Output)
  /// [projectId] (Output)
  /// [pscConnectionId] (Output)
  /// [serviceAttachment] (Output)
  InstanceEndpointConnectionPscAutoConnection({
    this.connectionType,
    this.forwardingRule,
    this.ipAddress,
    this.network,
    this.port,
    this.projectId,
    this.pscConnectionId,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionType': ?connectionType,
      'forwardingRule': ?forwardingRule,
      'ipAddress': ?ipAddress,
      'network': ?network,
      'port': ?port,
      'projectId': ?projectId,
      'pscConnectionId': ?pscConnectionId,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory InstanceEndpointConnectionPscAutoConnection.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceEndpointConnectionPscAutoConnection(
      connectionType: map['connectionType'] == null
          ? null
          : map['connectionType'] as String,
      forwardingRule: map['forwardingRule'] == null
          ? null
          : map['forwardingRule'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      pscConnectionId: map['pscConnectionId'] == null
          ? null
          : map['pscConnectionId'] as String,
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
