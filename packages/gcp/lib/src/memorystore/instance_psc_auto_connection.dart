// ignore_for_file: unused_element, unnecessary_cast

class InstancePscAutoConnection {
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
  /// Output Only. The status of the PSC connection: whether a connection exists and ACTIVE or it no longer exists.
  /// Possible values:
  /// ACTIVE
  /// NOT_FOUND
  final String? pscConnectionStatus;

  /// (Output)
  /// Output only. The service attachment which is the target of the PSC connection, in the form of projects/{project-id}/regions/{region}/serviceAttachments/{service-attachment-id}.
  final String? serviceAttachment;

  /// Creates a new [InstancePscAutoConnection].
  /// [connectionType] (Output)
  /// [forwardingRule] (Output)
  /// [ipAddress] (Output)
  /// [network] (Output)
  /// [port] (Output)
  /// [projectId] (Output)
  /// [pscConnectionId] (Output)
  /// [pscConnectionStatus] (Output)
  /// [serviceAttachment] (Output)
  InstancePscAutoConnection({
    this.connectionType,
    this.forwardingRule,
    this.ipAddress,
    this.network,
    this.port,
    this.projectId,
    this.pscConnectionId,
    this.pscConnectionStatus,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionTypeValue = connectionType;
    if (connectionTypeValue != null) {
      map['connectionType'] = connectionTypeValue;
    }
    final forwardingRuleValue = forwardingRule;
    if (forwardingRuleValue != null) {
      map['forwardingRule'] = forwardingRuleValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final pscConnectionIdValue = pscConnectionId;
    if (pscConnectionIdValue != null) {
      map['pscConnectionId'] = pscConnectionIdValue;
    }
    final pscConnectionStatusValue = pscConnectionStatus;
    if (pscConnectionStatusValue != null) {
      map['pscConnectionStatus'] = pscConnectionStatusValue;
    }
    final serviceAttachmentValue = serviceAttachment;
    if (serviceAttachmentValue != null) {
      map['serviceAttachment'] = serviceAttachmentValue;
    }
    return map;
  }

  factory InstancePscAutoConnection.fromMap(Map<String, dynamic> map) {
    return InstancePscAutoConnection(
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
      pscConnectionStatus: map['pscConnectionStatus'] == null
          ? null
          : map['pscConnectionStatus'] as String,
      serviceAttachment: map['serviceAttachment'] == null
          ? null
          : map['serviceAttachment'] as String,
    );
  }
}
