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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? nodeName,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      nodeName = pulumi.Input.asOptionalInput<String>(nodeName),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      nodeName: map['nodeName'] == null ? null : pulumi.Output.create<String>(map['nodeName'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
    );
  }
}

