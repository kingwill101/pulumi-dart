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
    String? fingerPrint,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? resourceGroupId,
    Map<String, String>? tags,
  }) :
      fingerPrint = pulumi.Input.asOptionalInput<String>(fingerPrint),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      fingerPrint: map['fingerPrint'] == null ? null : map['fingerPrint'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

