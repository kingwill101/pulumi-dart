// ignore_for_file: unused_element, unnecessary_cast

class CoreNetworkSegment {
  /// Regions where the edges are located.
  final List<String>? edgeLocations;

  /// Name of a core network segment.
  final String? name;

  /// Shared segments of a core network.
  final List<String>? sharedSegments;

  /// Creates a new [CoreNetworkSegment].
  /// [edgeLocations] Regions where the edges are located.
  /// [name] Name of a core network segment.
  /// [sharedSegments] Shared segments of a core network.
  CoreNetworkSegment({this.edgeLocations, this.name, this.sharedSegments});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeLocations': ?edgeLocations,
      'name': ?name,
      'sharedSegments': ?sharedSegments,
    };
  }

  factory CoreNetworkSegment.fromMap(Map<String, dynamic> map) {
    return CoreNetworkSegment(
      edgeLocations: map['edgeLocations'] == null
          ? null
          : (map['edgeLocations'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      sharedSegments: map['sharedSegments'] == null
          ? null
          : (map['sharedSegments'] as List).cast<String>(),
    );
  }
}
