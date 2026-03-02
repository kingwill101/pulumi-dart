// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_nodes_node.dart';

/// Result data returned by getVirtualNodes.
class GetVirtualNodesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final List<GetVirtualNodesNode> nodes;
  final String? outputFile;
  final String? resourceGroupId;
  final String? securityGroupId;
  final String? status;
  final Map<String, String>? tags;
  final String? virtualNodeName;
  final String? vswitchId;

  /// Creates a new [GetVirtualNodesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [nodes] Required.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [securityGroupId] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  /// [virtualNodeName] Optional.
  /// [vswitchId] Optional.
  GetVirtualNodesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    required this.nodes,
    this.outputFile,
    this.resourceGroupId,
    this.securityGroupId,
    this.status,
    this.tags,
    this.virtualNodeName,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'nodes': pulumi.Input.encodeList<GetVirtualNodesNode, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupId': ?securityGroupId,
      'status': ?status,
      'tags': ?tags,
      'virtualNodeName': ?virtualNodeName,
      'vswitchId': ?vswitchId,
    };
  }

  factory GetVirtualNodesResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      nodes: pulumi.Input.decodeList<GetVirtualNodesNode>(map['nodes'], (value) => GetVirtualNodesNode.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      virtualNodeName: map['virtualNodeName'] == null ? null : map['virtualNodeName']! as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId']! as String,
    );
  }
}

