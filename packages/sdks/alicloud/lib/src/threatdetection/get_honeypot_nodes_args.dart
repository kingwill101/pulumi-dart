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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeName: (() { final guardedValue = map['nodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

