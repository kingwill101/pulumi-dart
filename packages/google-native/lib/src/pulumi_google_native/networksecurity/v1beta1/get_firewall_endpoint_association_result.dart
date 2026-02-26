// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFirewallEndpointAssociation.
class GetFirewallEndpointAssociationResult {
  /// Create time stamp
  final String createTime;

  /// The URL of the FirewallEndpoint that is being associated.
  final String firewallEndpoint;

  /// Optional. Labels as key value pairs
  final Map<String, String> labels;

  /// name of resource
  final String name;

  /// The URL of the network that is being associated.
  final String network;

  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  final bool reconciling;

  /// Current state of the association.
  final String state;

  /// Optional. The URL of the TlsInspectionPolicy that is being associated.
  final String tlsInspectionPolicy;

  /// Update time stamp
  final String updateTime;

  GetFirewallEndpointAssociationResult({
    required this.createTime,
    required this.firewallEndpoint,
    required this.labels,
    required this.name,
    required this.network,
    required this.reconciling,
    required this.state,
    required this.tlsInspectionPolicy,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['firewallEndpoint'] = firewallEndpoint;
    map['labels'] = labels;
    map['name'] = name;
    map['network'] = network;
    map['reconciling'] = reconciling;
    map['state'] = state;
    map['tlsInspectionPolicy'] = tlsInspectionPolicy;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetFirewallEndpointAssociationResult.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallEndpointAssociationResult(
      createTime: map['createTime'] as String,
      firewallEndpoint: map['firewallEndpoint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      reconciling: map['reconciling'] as bool,
      state: map['state'] as String,
      tlsInspectionPolicy: map['tlsInspectionPolicy'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
