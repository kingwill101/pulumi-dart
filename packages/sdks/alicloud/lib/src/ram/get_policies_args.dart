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
  const GetPoliciesArgs({
    this.enableDetails,
    this.groupName,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.roleName,
    this.tags,
    this.type,
    this.userName,
  });

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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

