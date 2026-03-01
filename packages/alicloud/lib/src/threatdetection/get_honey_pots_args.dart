// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_honey_pots_get_honey_pots_args_doc}
/// Arguments for getHoneyPots.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_honey_pots_get_honey_pots_args_doc}
class GetHoneyPotsArgs {
  /// Honeypot ID.
  final pulumi.Input<String>? honeypotId;
  /// Honeypot custom name.
  final pulumi.Input<String>? honeypotName;
  /// A list of Honey Pot IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by honey pot name.
  final pulumi.Input<String>? nameRegex;
  /// The ID of the honeypot management node.
  final pulumi.Input<String>? nodeId;
  /// The name of the honeypot management node.
  final pulumi.Input<String>? nodeName;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetHoneyPotsArgs].
  /// [honeypotId] Honeypot ID.
  /// [honeypotName] Honeypot custom name.
  /// [ids] A list of Honey Pot IDs.
  /// [nameRegex] A regex string to filter results by honey pot name.
  /// [nodeId] The ID of the honeypot management node.
  /// [nodeName] The name of the honeypot management node.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetHoneyPotsArgs({
    String? honeypotId,
    String? honeypotName,
    List<String>? ids,
    String? nameRegex,
    String? nodeId,
    String? nodeName,
    String? outputFile,
  }) :
      honeypotId = pulumi.Input.asOptionalInput<String>(honeypotId),
      honeypotName = pulumi.Input.asOptionalInput<String>(honeypotName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      nodeName = pulumi.Input.asOptionalInput<String>(nodeName),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotId': ?honeypotId,
      'honeypotName': ?honeypotName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'nodeId': ?nodeId,
      'nodeName': ?nodeName,
      'outputFile': ?outputFile,
    };
  }

  factory GetHoneyPotsArgs.fromMap(Map<String, dynamic> map) {
    return GetHoneyPotsArgs(
      honeypotId: map['honeypotId'] == null ? null : map['honeypotId'] as String,
      honeypotName: map['honeypotName'] == null ? null : map['honeypotName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      nodeName: map['nodeName'] == null ? null : map['nodeName'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

