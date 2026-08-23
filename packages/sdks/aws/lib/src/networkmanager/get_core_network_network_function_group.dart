// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_network_function_group_segment.dart';

class GetCoreNetworkNetworkFunctionGroup {
  /// AWS regions where the edges are located.
  final pulumi.Input<List<String>> edgeLocations;
  /// Name of the core network segment.
  final pulumi.Input<String> name;
  /// Segments associated with the network function group. See `network_function_groups.segments` Attribute Reference for details.
  final pulumi.Input<List<GetCoreNetworkNetworkFunctionGroupSegment>> segments;

  /// Creates a new [GetCoreNetworkNetworkFunctionGroup].
  /// [edgeLocations] AWS regions where the edges are located.
  /// [name] Name of the core network segment.
  /// [segments] Segments associated with the network function group. See `network_function_groups.segments` Attribute Reference for details.
  const GetCoreNetworkNetworkFunctionGroup({
    required this.edgeLocations,
    required this.name,
    required this.segments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeLocations': edgeLocations,
      'name': name,
      'segments': pulumi.Input.mapInputValue<List<GetCoreNetworkNetworkFunctionGroupSegment>, List<Map<String, dynamic>>>(segments, (value) => pulumi.Input.encodeList<GetCoreNetworkNetworkFunctionGroupSegment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCoreNetworkNetworkFunctionGroup.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkNetworkFunctionGroup(
      edgeLocations: pulumi.Input.fromValue((map['edgeLocations'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      segments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCoreNetworkNetworkFunctionGroupSegment>(map['segments']!, (value) => GetCoreNetworkNetworkFunctionGroupSegment.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
