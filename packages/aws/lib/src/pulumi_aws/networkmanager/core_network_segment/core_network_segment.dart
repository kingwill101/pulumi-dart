// ignore_for_file: unused_element, unnecessary_cast

class CoreNetworkSegment {
  /// Regions where the edges are located.
  final List<String>? edgeLocations;

  /// Name of a core network segment.
  final String? name;

  /// Shared segments of a core network.
  final List<String>? sharedSegments;

  CoreNetworkSegment({
    this.edgeLocations,
    this.name,
    this.sharedSegments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final edgeLocationsValue = edgeLocations;
    if (edgeLocationsValue != null) {
      map['edgeLocations'] = edgeLocationsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final sharedSegmentsValue = sharedSegments;
    if (sharedSegmentsValue != null) {
      map['sharedSegments'] = sharedSegmentsValue;
    }
    return map;
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
