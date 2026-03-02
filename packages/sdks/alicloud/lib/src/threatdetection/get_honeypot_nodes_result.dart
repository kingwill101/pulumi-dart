// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honeypot_nodes_node.dart';

/// Result data returned by getHoneypotNodes.
class GetHoneypotNodesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Honeypot Node IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of Honeypot Node names.
  final List<String> names;
  /// Honeypot management node id.
  final String? nodeId;
  /// Management node name.
  final String? nodeName;
  /// A list of Honeypot Node Entries. Each element contains the following attributes:
  final List<GetHoneypotNodesNode> nodes;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetHoneypotNodesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Honeypot Node IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Honeypot Node names.
  /// [nodeId] Honeypot management node id.
  /// [nodeName] Management node name.
  /// [nodes] A list of Honeypot Node Entries. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetHoneypotNodesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.nodeId,
    this.nodeName,
    required this.nodes,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'nodeId': ?nodeId,
      'nodeName': ?nodeName,
      'nodes': pulumi.Input.encodeList<GetHoneypotNodesNode, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetHoneypotNodesResult.fromMap(Map<String, dynamic> map) {
    return GetHoneypotNodesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      nodeId: map['nodeId'] == null ? null : map['nodeId']! as String,
      nodeName: map['nodeName'] == null ? null : map['nodeName']! as String,
      nodes: pulumi.Input.decodeList<GetHoneypotNodesNode>(map['nodes'], (value) => GetHoneypotNodesNode.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
    );
  }
}

