// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CoreNetworkEdge {
  /// ASN of a core network edge.
  final pulumi.Input<int>? asn;
  /// Region where a core network edge is located.
  final pulumi.Input<String>? edgeLocation;
  /// Inside IP addresses used for core network edges.
  final pulumi.Input<List<String>>? insideCidrBlocks;

  /// Creates a new [CoreNetworkEdge].
  /// [asn] ASN of a core network edge.
  /// [edgeLocation] Region where a core network edge is located.
  /// [insideCidrBlocks] Inside IP addresses used for core network edges.
  CoreNetworkEdge({
    this.asn,
    this.edgeLocation,
    this.insideCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'edgeLocation': ?edgeLocation,
      'insideCidrBlocks': ?insideCidrBlocks,
    };
  }

  factory CoreNetworkEdge.fromMap(Map<String, dynamic> map) {
    return CoreNetworkEdge(
      asn: map['asn'] == null ? null : (map['asn'] as int).input(),
      edgeLocation: map['edgeLocation'] == null ? null : (map['edgeLocation'] as String).input(),
      insideCidrBlocks: map['insideCidrBlocks'] == null ? null : ((map['insideCidrBlocks'] as List).cast<String>()).input(),
    );
  }
}

