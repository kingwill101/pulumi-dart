// ignore_for_file: unused_element, unnecessary_cast

/// Details of consumer resources in a PSC connection.
class PscConnectionResponse2 {
  /// The IP allocated on the consumer network for the PSC forwarding rule.
  final String address;

  /// The URI of the consumer side forwarding rule. Example: projects/{projectNumOrId}/regions/us-east1/forwardingRules/{resourceId}.
  final String forwardingRule;

  /// The consumer network where the IP address resides, in the form of projects/{project_id}/global/networks/{network_id}.
  final String network;

  /// The consumer project_id where the forwarding rule is created from.
  final String project;

  /// The PSC connection id of the forwarding rule connected to the service attachment.
  final String pscConnectionId;

  PscConnectionResponse2({
    required this.address,
    required this.forwardingRule,
    required this.network,
    required this.project,
    required this.pscConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['forwardingRule'] = forwardingRule;
    map['network'] = network;
    map['project'] = project;
    map['pscConnectionId'] = pscConnectionId;
    return map;
  }

  factory PscConnectionResponse2.fromMap(Map<String, dynamic> map) {
    return PscConnectionResponse2(
      address: map['address'] as String,
      forwardingRule: map['forwardingRule'] as String,
      network: map['network'] as String,
      project: map['project'] as String,
      pscConnectionId: map['pscConnectionId'] as String,
    );
  }
}
