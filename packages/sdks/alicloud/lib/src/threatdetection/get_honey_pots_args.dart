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
    this.honeypotId,
    this.honeypotName,
    this.ids,
    this.nameRegex,
    this.nodeId,
    this.nodeName,
    this.outputFile,
  });

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
      honeypotId: map['honeypotId'] == null ? null : (map['honeypotId'] as String).input(),
      honeypotName: map['honeypotName'] == null ? null : (map['honeypotName'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      nodeName: map['nodeName'] == null ? null : (map['nodeName'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

