// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dfs_get_access_rules_get_access_rules_args_doc}
/// Arguments for getAccessRules.
/// {@endtemplate}
/// {@macro pulumi_dfs_get_access_rules_get_access_rules_args_doc}
class GetAccessRulesArgs {
  /// The resource ID of the Access Group.
  final pulumi.Input<String> accessGroupId;
  /// A list of Access Rule IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAccessRulesArgs].
  /// [accessGroupId] The resource ID of the Access Group.
  /// [ids] A list of Access Rule IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAccessRulesArgs({
    required pulumi.Output<String> accessGroupId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
  }) :
      accessGroupId = pulumi.Input.asInput<String>(accessGroupId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': accessGroupId,
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetAccessRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesArgs(
      accessGroupId: pulumi.Output.create<String>(map['accessGroupId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

