// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_core_network_edge.dart';
import 'get_core_network_network_function_group.dart';
import 'get_core_network_segment.dart';

/// Result data returned by getCoreNetwork.
class GetCoreNetworkResult {
  /// ARN of the core network.
  final String? arn;
  final String? coreNetworkId;
  /// Time stamp when the core network was created.
  final String? createdAt;
  /// Description of the core network.
  final String? description;
  /// Edges within a core network. See `edges` Attribute Reference for details.
  final List<GetCoreNetworkEdge>? edges;
  /// ID of the global network that the core network is a part of.
  final String? globalNetworkId;
  /// Network function groups associated with the core network. See `networkFunctionGroups` Attribute Reference for details.
  final List<GetCoreNetworkNetworkFunctionGroup>? networkFunctionGroups;
  /// Segments associated with the network function group. See `network_function_groups.segments` Attribute Reference for details.
  final List<GetCoreNetworkSegment>? segments;
  /// Current state of the core network.
  final String? state;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetCoreNetworkResult].
  /// [arn] ARN of the core network.
  /// [coreNetworkId] Optional.
  /// [createdAt] Time stamp when the core network was created.
  /// [description] Description of the core network.
  /// [edges] Edges within a core network. See `edges` Attribute Reference for details.
  /// [globalNetworkId] ID of the global network that the core network is a part of.
  /// [networkFunctionGroups] Network function groups associated with the core network. See `networkFunctionGroups` Attribute Reference for details.
  /// [segments] Segments associated with the network function group. See `network_function_groups.segments` Attribute Reference for details.
  /// [state] Current state of the core network.
  /// [tags] Map of tags assigned to the resource.
  const GetCoreNetworkResult({
    this.arn,
    this.coreNetworkId,
    this.createdAt,
    this.description,
    this.edges,
    this.globalNetworkId,
    this.networkFunctionGroups,
    this.segments,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'coreNetworkId': ?coreNetworkId,
      'createdAt': ?createdAt,
      'description': ?description,
      'edges': ?(() { final guardedValue = edges; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkEdge, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'globalNetworkId': ?globalNetworkId,
      'networkFunctionGroups': ?(() { final guardedValue = networkFunctionGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkNetworkFunctionGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'segments': ?(() { final guardedValue = segments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoreNetworkSegment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetCoreNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetCoreNetworkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coreNetworkId: (() { final guardedValue = map['coreNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      edges: (() { final guardedValue = map['edges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkEdge>(guardedValue, (value) => GetCoreNetworkEdge.fromMap((value as Map).cast<String, dynamic>())); })(),
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkFunctionGroups: (() { final guardedValue = map['networkFunctionGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkNetworkFunctionGroup>(guardedValue, (value) => GetCoreNetworkNetworkFunctionGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      segments: (() { final guardedValue = map['segments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoreNetworkSegment>(guardedValue, (value) => GetCoreNetworkSegment.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
