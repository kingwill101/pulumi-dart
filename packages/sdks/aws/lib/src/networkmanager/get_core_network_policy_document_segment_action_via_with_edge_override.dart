// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride {
  /// A list of a list of strings. The list of edges associated with the network function group.
  final pulumi.Input<List<List<String>>>? edgeSets;
  /// The preferred edge to use.
  final pulumi.Input<String>? useEdge;
  /// The preferred edge to use.
  final pulumi.Input<String>? useEdgeLocation;

  /// Creates a new [GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride].
  /// [edgeSets] A list of a list of strings. The list of edges associated with the network function group.
  /// [useEdge] The preferred edge to use.
  /// [useEdgeLocation] The preferred edge to use.
  const GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride({
    this.edgeSets,
    this.useEdge,
    this.useEdgeLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeSets': ?edgeSets,
      'useEdge': ?useEdge,
      'useEdgeLocation': ?useEdgeLocation,
    };
  }

  factory GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkPolicyDocumentSegmentActionViaWithEdgeOverride(
      edgeSets: (() { final guardedValue = map['edgeSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<List<String>>()); })(),
      useEdge: (() { final guardedValue = map['useEdge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useEdgeLocation: (() { final guardedValue = map['useEdgeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
