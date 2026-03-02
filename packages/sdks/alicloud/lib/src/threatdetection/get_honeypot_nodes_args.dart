// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_honeypot_nodes_get_honeypot_nodes_args_doc}
/// Arguments for getHoneypotNodes.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_honeypot_nodes_get_honeypot_nodes_args_doc}
class GetHoneypotNodesArgs {
  /// A list of Honeypot Node IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Honeypot Node name.
  final pulumi.Input<String>? nameRegex;
  /// Honeypot management node id.
  final pulumi.Input<String>? nodeId;
  /// The name of the management node.
  final pulumi.Input<String>? nodeName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetHoneypotNodesArgs].
  /// [ids] A list of Honeypot Node IDs.
  /// [nameRegex] A regex string to filter results by Honeypot Node name.
  /// [nodeId] Honeypot management node id.
  /// [nodeName] The name of the management node.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetHoneypotNodesArgs({
    this.ids,
    this.nameRegex,
    this.nodeId,
    this.nodeName,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'nodeId': ?nodeId,
      'nodeName': ?nodeName,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetHoneypotNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetHoneypotNodesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      nodeName: map['nodeName'] == null ? null : (map['nodeName'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
    );
  }
}

