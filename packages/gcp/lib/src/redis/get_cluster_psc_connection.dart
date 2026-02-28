// ignore_for_file: unused_element, unnecessary_cast

class GetClusterPscConnection {
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final String address;

  /// Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  final String forwardingRule;

  /// The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  final String network;

  /// Output only. The consumer projectId where the forwarding rule is created from.
  final String projectId;

  /// Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  final String pscConnectionId;

  /// Creates a new [GetClusterPscConnection].
  /// [address] Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  /// [forwardingRule] Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  /// [network] The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  /// [projectId] Output only. The consumer projectId where the forwarding rule is created from.
  /// [pscConnectionId] Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  GetClusterPscConnection({
    required this.address,
    required this.forwardingRule,
    required this.network,
    required this.projectId,
    required this.pscConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['forwardingRule'] = forwardingRule;
    map['network'] = network;
    map['projectId'] = projectId;
    map['pscConnectionId'] = pscConnectionId;
    return map;
  }

  factory GetClusterPscConnection.fromMap(Map<String, dynamic> map) {
    return GetClusterPscConnection(
      address: map['address'] as String,
      forwardingRule: map['forwardingRule'] as String,
      network: map['network'] as String,
      projectId: map['projectId'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
    );
  }
}
