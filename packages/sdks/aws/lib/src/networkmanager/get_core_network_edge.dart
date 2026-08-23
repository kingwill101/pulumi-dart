// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkEdge {
  /// ASN of the core network edge.
  final pulumi.Input<int> asn;
  /// AWS region where the edge is located.
  final pulumi.Input<String> edgeLocation;
  /// Inside IP addresses used for core network edges.
  final pulumi.Input<List<String>> insideCidrBlocks;

  /// Creates a new [GetCoreNetworkEdge].
  /// [asn] ASN of the core network edge.
  /// [edgeLocation] AWS region where the edge is located.
  /// [insideCidrBlocks] Inside IP addresses used for core network edges.
  const GetCoreNetworkEdge({
    required this.asn,
    required this.edgeLocation,
    required this.insideCidrBlocks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'edgeLocation': edgeLocation,
      'insideCidrBlocks': insideCidrBlocks,
    };
  }

  factory GetCoreNetworkEdge.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkEdge(
      asn: pulumi.Input.fromValue(map['asn'] as int),
      edgeLocation: pulumi.Input.fromValue(map['edgeLocation'] as String),
      insideCidrBlocks: pulumi.Input.fromValue((map['insideCidrBlocks'] as List).cast<String>()),
    );
  }
}
