// ignore_for_file: unused_element, unnecessary_cast

class CoreNetworkEdge {
  /// ASN of a core network edge.
  final int? asn;

  /// Region where a core network edge is located.
  final String? edgeLocation;

  /// Inside IP addresses used for core network edges.
  final List<String>? insideCidrBlocks;

  CoreNetworkEdge({
    this.asn,
    this.edgeLocation,
    this.insideCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final asnValue = asn;
    if (asnValue != null) {
      map['asn'] = asnValue;
    }
    final edgeLocationValue = edgeLocation;
    if (edgeLocationValue != null) {
      map['edgeLocation'] = edgeLocationValue;
    }
    final insideCidrBlocksValue = insideCidrBlocks;
    if (insideCidrBlocksValue != null) {
      map['insideCidrBlocks'] = insideCidrBlocksValue;
    }
    return map;
  }

  factory CoreNetworkEdge.fromMap(Map<String, dynamic> map) {
    return CoreNetworkEdge(
      asn: map['asn'] == null ? null : map['asn'] as int,
      edgeLocation:
          map['edgeLocation'] == null ? null : map['edgeLocation'] as String,
      insideCidrBlocks: map['insideCidrBlocks'] == null
          ? null
          : (map['insideCidrBlocks'] as List).cast<String>(),
    );
  }
}
