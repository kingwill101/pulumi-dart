// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_roles_get_roles_args_doc}
/// Arguments for getRoles.
/// {@endtemplate}
/// {@macro pulumi_ram_get_roles_get_roles_args_doc}
class GetRolesArgs {
  /// A list of Role IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Role name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the policy.
  final pulumi.Input<String>? policyName;
  /// The type of the policy. Default value: `System`. Valid values: `System`, `Custom`. **Note:** `policy_type` takes effect only when `policy_name` is set.
  final pulumi.Input<String>? policyType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetRolesArgs].
  /// [ids] A list of Role IDs.
  /// [nameRegex] A regex string to filter results by Role name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyName] The name of the policy.
  /// [policyType] The type of the policy. Default value: `System`. Valid values: `System`, `Custom`. **Note:** `policy_type` takes effect only when `policy_name` is set.
  /// [tags] A mapping of tags to assign to the resource.
  GetRolesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.policyName,
    this.policyType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'tags': ?tags,
    };
  }

  factory GetRolesArgs.fromMap(Map<String, dynamic> map) {
    return GetRolesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

