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
      edgeLocations: map['edgeLocations'] == null ? null : (((map['edgeLocations'] as List).cast<String>()).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      sharedSegments: map['sharedSegments'] == null ? null : (((map['sharedSegments'] as List).cast<String>()).input()).input(),
    );
  }
}

