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
      honeypotId: (() {
        final guardedValue = map['honeypotId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      honeypotName: (() {
        final guardedValue = map['honeypotName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeId: (() {
        final guardedValue = map['nodeId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeName: (() {
        final guardedValue = map['nodeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
