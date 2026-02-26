// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation {
  /// The AWS Region code for the first edge location in the association (e.g., `us-east-1`).
  final String edgeLocation;

  /// The AWS Region code for the second edge location in the association (e.g., `us-west-2`).
  final String peerEdgeLocation;

  /// A set of routing policy names to apply to this edge location pair.
  final List<String> routingPolicyNames;

  GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation({
    required this.edgeLocation,
    required this.peerEdgeLocation,
    required this.routingPolicyNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['edgeLocation'] = edgeLocation;
    map['peerEdgeLocation'] = peerEdgeLocation;
    map['routingPolicyNames'] = routingPolicyNames;
    return map;
  }

  factory GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegmentActionEdgeLocationAssociation(
      edgeLocation: map['edgeLocation'] as String,
      peerEdgeLocation: map['peerEdgeLocation'] as String,
      routingPolicyNames: (map['routingPolicyNames'] as List).cast<String>(),
    );
  }
}
