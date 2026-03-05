// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CoreNetworkSegment {
  /// Regions where the edges are located.
  final pulumi.Input<List<String>>? edgeLocations;
  /// Name of a core network segment.
  final pulumi.Input<String>? name;
  /// Shared segments of a core network.
  final pulumi.Input<List<String>>? sharedSegments;

  /// Creates a new [CoreNetworkSegment].
  /// [edgeLocations] Regions where the edges are located.
  /// [name] Name of a core network segment.
  /// [sharedSegments] Shared segments of a core network.
  CoreNetworkSegment({
    this.edgeLocations,
    this.name,
    this.sharedSegments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeLocations': ?edgeLocations,
      'name': ?name,
      'sharedSegments': ?sharedSegments,
    };
  }

  factory CoreNetworkSegment.fromMap(Map<String, dynamic> map) {
    return CoreNetworkSegment(
      edgeLocations: (() { final guardedValue = map['edgeLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedSegments: (() { final guardedValue = map['sharedSegments']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

