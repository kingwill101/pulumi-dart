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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? policyType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

