// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_key_pairs_get_ecs_key_pairs_args_doc}
/// Arguments for getEcsKeyPairs.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_key_pairs_get_ecs_key_pairs_args_doc}
class GetEcsKeyPairsArgs {
  /// The fingerprint of the key pair.
  final pulumi.Input<String>? fingerPrint;

  /// A list of Key Pair IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Key Pair name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEcsKeyPairsArgs].
  /// [fingerPrint] The fingerprint of the key pair.
  /// [ids] A list of Key Pair IDs.
  /// [nameRegex] A regex string to filter results by Key Pair name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  GetEcsKeyPairsArgs({
    this.fingerPrint,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerPrint': ?fingerPrint,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetEcsKeyPairsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsKeyPairsArgs(
      fingerPrint: (() {
        final guardedValue = map['fingerPrint'];
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
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
