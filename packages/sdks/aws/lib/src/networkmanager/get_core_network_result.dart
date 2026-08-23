// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_edge.dart';
import 'get_core_network_network_function_group.dart';
import 'get_core_network_segment.dart';

/// Result data returned by getCoreNetwork.
class GetCoreNetworkResult {
  /// ARN of the core network.
  final String arn;
  final String coreNetworkId;
  /// Time stamp when the core network was created.
  final String createdAt;
  /// Description of the core network.
  final String description;
  /// Edges within a core network. See `edges` Attribute Reference for details.
  final List<GetCoreNetworkEdge> edges;
  /// ID of the global network that the core network is a part of.
  final String globalNetworkId;
  /// Network function groups associated with the core network. See `networkFunctionGroups` Attribute Reference for details.
  final List<GetCoreNetworkNetworkFunctionGroup> networkFunctionGroups;
  /// Segments associated with the network function group. See `network_function_groups.segments` Attribute Reference for details.
  final List<GetCoreNetworkSegment> segments;
  /// Current state of the core network.
  final String state;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetCoreNetworkResult].
  /// [arn] ARN of the core network.
  /// [coreNetworkId] Required.
  /// [createdAt] Time stamp when the core network was created.
  /// [description] Description of the core network.
  /// [edges] Edges within a core network. See `edges` Attribute Reference for details.
  /// [globalNetworkId] ID of the global network that the core network is a part of.
  /// [networkFunctionGroups] Network function groups associated with the core network. See `networkFunctionGroups` Attribute Reference for details.
  /// [segments] Segments associated with the network function group. See `network_function_groups.segments` Attribute Reference for details.
  /// [state] Current state of the core network.
  /// [tags] Map of tags assigned to the resource.
  const GetCoreNetworkResult({
    required this.arn,
    required this.coreNetworkId,
    required this.createdAt,
    required this.description,
    required this.edges,
    required this.globalNetworkId,
    required this.networkFunctionGroups,
    required this.segments,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'coreNetworkId': coreNetworkId,
      'createdAt': createdAt,
      'description': description,
      'edges': pulumi.Input.encodeList<GetCoreNetworkEdge, Map<String, dynamic>>(edges, (value) => value.toMap()),
      'globalNetworkId': globalNetworkId,
      'networkFunctionGroups': pulumi.Input.encodeList<GetCoreNetworkNetworkFunctionGroup, Map<String, dynamic>>(networkFunctionGroups, (value) => value.toMap()),
      'segments': pulumi.Input.encodeList<GetCoreNetworkSegment, Map<String, dynamic>>(segments, (value) => value.toMap()),
      'state': state,
      'tags': tags,
    };
  }

  factory GetCoreNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkResult(
      arn: map['arn'] as String,
      coreNetworkId: map['coreNetworkId'] as String,
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      edges: pulumi.Input.decodeList<GetCoreNetworkEdge>(map['edges']!, (value) => GetCoreNetworkEdge.fromMap((value as Map).cast<String, dynamic>())),
      globalNetworkId: map['globalNetworkId'] as String,
      networkFunctionGroups: pulumi.Input.decodeList<GetCoreNetworkNetworkFunctionGroup>(map['networkFunctionGroups']!, (value) => GetCoreNetworkNetworkFunctionGroup.fromMap((value as Map).cast<String, dynamic>())),
      segments: pulumi.Input.decodeList<GetCoreNetworkSegment>(map['segments']!, (value) => GetCoreNetworkSegment.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
