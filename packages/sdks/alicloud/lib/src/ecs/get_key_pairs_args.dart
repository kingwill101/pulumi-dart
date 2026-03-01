// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_key_pairs_get_key_pairs_args_doc}
/// Arguments for getKeyPairs.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_key_pairs_get_key_pairs_args_doc}
class GetKeyPairsArgs {
  /// A finger print used to retrieve specified key pair.
  final pulumi.Input<String>? fingerPrint;
  /// A list of key pair IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to apply to the resulting key pairs.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Id of resource group which the key pair belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetKeyPairsArgs].
  /// [fingerPrint] A finger print used to retrieve specified key pair.
  /// [ids] A list of key pair IDs.
  /// [nameRegex] A regex string to apply to the resulting key pairs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The Id of resource group which the key pair belongs.
  /// [tags] A mapping of tags to assign to the resource.
  GetKeyPairsArgs({
    pulumi.Output<String>? fingerPrint,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
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

  factory GetKeyPairsArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsArgs(
      fingerPrint: map['fingerPrint'] == null ? null : pulumi.Output.create<String>(map['fingerPrint'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

