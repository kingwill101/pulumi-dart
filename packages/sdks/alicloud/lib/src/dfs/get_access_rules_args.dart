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
  GetAccessRulesArgs({required this.accessGroupId, this.ids, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': accessGroupId,
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetAccessRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesArgs(
      accessGroupId: pulumi.Input.fromValue(map['accessGroupId'] as String),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
