// ignore_for_file: unused_element, unnecessary_cast

class ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection {
  /// The IP allocated on the consumer network for the PSC forwarding rule.
  final String address;

  /// (Output)
  /// Output Only. Type of a PSC Connection.
  /// Possible values:
  /// CONNECTION_TYPE_DISCOVERY
  /// CONNECTION_TYPE_PRIMARY
  /// CONNECTION_TYPE_READER
  final String? connectionType;

  /// The URI of the consumer side forwarding rule.
  /// Format:
  /// projects/{project}/regions/{region}/forwardingRules/{forwarding_rule}
  final String forwardingRule;

  /// The consumer network where the IP address resides, in the form of
  /// projects/{project_id}/global/networks/{network_id}.
  final String network;

  /// The consumer project_id where the forwarding rule is created from.
  final String? projectId;

  /// The PSC connection id of the forwarding rule connected to the
  /// service attachment.
  final String pscConnectionId;

  /// (Output)
  /// Output Only. The status of the PSC connection: whether a connection exists and ACTIVE or it no longer exists.
  /// Possible values:
  /// ACTIVE
  /// NOT_FOUND
  final String? pscConnectionStatus;

  /// The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final String serviceAttachment;

  ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection({
    required this.address,
    this.connectionType,
    required this.forwardingRule,
    required this.network,
    this.projectId,
    required this.pscConnectionId,
    this.pscConnectionStatus,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue;
    }
    map['forwardingRule'] = forwardingRule;
    map['network'] = network;
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    map['pscConnectionId'] = pscConnectionId;
    final pscConnectionStatusValue = pscConnectionStatus;
    if (pscConnectionStatusValue != null) {
      map['pscConnectionStatus'] = pscConnectionStatusValue;
    }
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection.fromMap(
      Map<String, dynamic> map) {
    return ClusterUserCreatedConnectionsClusterEndpointConnectionPscConnection(
      address: map['address'] as String,
      connectionType: map['connectionType'] == null
          ? null
          : map['connectionType'] as String,
      forwardingRule: map['forwardingRule'] as String,
      network: map['network'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
      pscConnectionStatus: map['pscConnectionStatus'] == null
          ? null
          : map['pscConnectionStatus'] as String,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
