// ignore_for_file: unused_element, unnecessary_cast

class ClusterPscConnection {
  /// Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  final String? address;

  /// Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  final String? forwardingRule;

  /// The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  final String? network;

  /// Output only. The consumer projectId where the forwarding rule is created from.
  final String? projectId;

  /// Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  final String? pscConnectionId;

  /// Creates a new [ClusterPscConnection].
  /// [address] Output only. The IP allocated on the consumer network for the PSC forwarding rule.
  /// [forwardingRule] Output only. The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  /// [network] The consumer network where the IP address resides, in the form of projects/{projectId}/global/networks/{network_id}.
  /// [projectId] Output only. The consumer projectId where the forwarding rule is created from.
  /// [pscConnectionId] Output only. The PSC connection id of the forwarding rule connected to the service attachment.
  ClusterPscConnection({
    this.address,
    this.forwardingRule,
    this.network,
    this.projectId,
    this.pscConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final forwardingRuleValue = forwardingRule;
    if (forwardingRuleValue != null) {
      map['forwardingRule'] = forwardingRuleValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    final pscConnectionIdValue = pscConnectionId;
    if (pscConnectionIdValue != null) {
      map['pscConnectionId'] = pscConnectionIdValue;
    }
    return map;
  }

  factory ClusterPscConnection.fromMap(Map<String, dynamic> map) {
    return ClusterPscConnection(
      address: map['address'] == null ? null : map['address'] as String,
      forwardingRule: map['forwardingRule'] == null
          ? null
          : map['forwardingRule'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      pscConnectionId: map['pscConnectionId'] == null
          ? null
          : map['pscConnectionId'] as String,
    );
  }
}
