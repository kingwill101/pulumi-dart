// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_policies_get_policies_args_doc}
/// Arguments for getPolicies.
/// {@endtemplate}
/// {@macro pulumi_ram_get_policies_get_policies_args_doc}
class GetPoliciesArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `true`.
  final pulumi.Input<bool>? enableDetails;
  /// The name of the user group.
  final pulumi.Input<String>? groupName;
  /// A list of Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the RAM role.
  final pulumi.Input<String>? roleName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the policy. Valid values: `System` and `Custom`.
  final pulumi.Input<String>? type;
  /// The name of the RAM user.
  final pulumi.Input<String>? userName;

  /// Creates a new [GetPoliciesArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `true`.
  /// [groupName] The name of the user group.
  /// [ids] A list of Policy IDs.
  /// [nameRegex] A regex string to filter results by Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [roleName] The name of the RAM role.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the policy. Valid values: `System` and `Custom`.
  /// [userName] The name of the RAM user.
  GetPoliciesArgs({
    bool? enableDetails,
    String? groupName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? roleName,
    Map<String, String>? tags,
    String? type,
    String? userName,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'groupName': ?groupName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'roleName': ?roleName,
      'tags': ?tags,
      'type': ?type,
      'userName': ?userName,
    };
  }

  factory GetPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetPoliciesArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] == null ? null : map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

