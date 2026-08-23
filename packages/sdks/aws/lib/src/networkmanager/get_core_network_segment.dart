// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCoreNetworkSegment {
  /// AWS regions where the edges are located.
  final pulumi.Input<List<String>> edgeLocations;
  /// Name of the core network segment.
  final pulumi.Input<String> name;
  /// Shared segments of the core network.
  final pulumi.Input<List<String>> sharedSegments;

  /// Creates a new [GetCoreNetworkSegment].
  /// [edgeLocations] AWS regions where the edges are located.
  /// [name] Name of the core network segment.
  /// [sharedSegments] Shared segments of the core network.
  const GetCoreNetworkSegment({
    required this.edgeLocations,
    required this.name,
    required this.sharedSegments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeLocations': edgeLocations,
      'name': name,
      'sharedSegments': sharedSegments,
    };
  }

  factory GetCoreNetworkSegment.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkSegment(
      edgeLocations: pulumi.Input.fromValue((map['edgeLocations'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      sharedSegments: pulumi.Input.fromValue((map['sharedSegments'] as List).cast<String>()),
    );
  }
}
