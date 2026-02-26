// ignore_for_file: unused_element, unnecessary_cast

class GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride {
  /// A list of a list of strings. The list of edges associated with the network function group.
  final List<List<String>>? edgeSets;

  /// The preferred edge to use.
  final String? useEdge;

  /// The preferred edge to use.
  final String? useEdgeLocation;

  GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride({
    this.edgeSets,
    this.useEdge,
    this.useEdgeLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final edgeSetsValue = edgeSets;
    if (edgeSetsValue != null) {
      map['edgeSets'] = edgeSetsValue;
    }
    final useEdgeValue = useEdge;
    if (useEdgeValue != null) {
      map['useEdge'] = useEdgeValue;
    }
    final useEdgeLocationValue = useEdgeLocation;
    if (useEdgeLocationValue != null) {
      map['useEdgeLocation'] = useEdgeLocationValue;
    }
    return map;
  }

  factory GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride.fromMap(
      Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride(
      edgeSets: map['edgeSets'] == null
          ? null
          : (map['edgeSets'] as List).cast<List<String>>(),
      useEdge: map['useEdge'] == null ? null : map['useEdge'] as String,
      useEdgeLocation: map['useEdgeLocation'] == null
          ? null
          : map['useEdgeLocation'] as String,
    );
  }
}
