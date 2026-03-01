// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_users_get_users_args_doc}
/// Arguments for getUsers.
/// {@endtemplate}
/// {@macro pulumi_ram_get_users_get_users_args_doc}
class GetUsersArgs {
  /// Filter results by a specific group name. Returned users are in the specified group.
  final pulumi.Input<String>? groupName;
  /// A list of ram user IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter resulting users by their names.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter results by a specific policy name. If you set this parameter without setting `policy_type`, the later will be automatically set to `System`. Returned users are attached to the specified policy.
  final pulumi.Input<String>? policyName;
  /// Filter results by a specific policy type. Valid values are `Custom` and `System`. If you set this parameter, you must set `policy_name` as well.
  final pulumi.Input<String>? policyType;

  /// Creates a new [GetUsersArgs].
  /// [groupName] Filter results by a specific group name. Returned users are in the specified group.
  /// [ids] A list of ram user IDs.
  /// [nameRegex] A regex string to filter resulting users by their names.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyName] Filter results by a specific policy name. If you set this parameter without setting `policy_type`, the later will be automatically set to `System`. Returned users are attached to the specified policy.
  /// [policyType] Filter results by a specific policy type. Valid values are `Custom` and `System`. If you set this parameter, you must set `policy_name` as well.
  GetUsersArgs({
    String? groupName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? policyName,
    String? policyType,
  }) :
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policyType = pulumi.Input.asOptionalInput<String>(policyType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'policyName': ?policyName,
      'policyType': ?policyType,
    };
  }

  factory GetUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetUsersArgs(
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
    );
  }
}

