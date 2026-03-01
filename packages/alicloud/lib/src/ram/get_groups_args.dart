// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_groups_get_groups_args_doc}
/// Arguments for getGroups.
/// {@endtemplate}
/// {@macro pulumi_ram_get_groups_get_groups_args_doc}
class GetGroupsArgs {
  /// A regex string to filter the returned groups by their names.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Filter the results by a specific policy name. If you set this parameter without setting `policy_type`, it will be automatically set to `System`.
  final pulumi.Input<String>? policyName;
  /// Filter the results by a specific policy type. Valid items are `Custom` and `System`. If you set this parameter, you must set `policy_name` as well.
  final pulumi.Input<String>? policyType;
  /// Filter the results by a specific the user name.
  final pulumi.Input<String>? userName;

  /// Creates a new [GetGroupsArgs].
  /// [nameRegex] A regex string to filter the returned groups by their names.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyName] Filter the results by a specific policy name. If you set this parameter without setting `policy_type`, it will be automatically set to `System`.
  /// [policyType] Filter the results by a specific policy type. Valid items are `Custom` and `System`. If you set this parameter, you must set `policy_name` as well.
  /// [userName] Filter the results by a specific the user name.
  GetGroupsArgs({
    String? nameRegex,
    String? outputFile,
    String? policyName,
    String? policyType,
    String? userName,
  }) :
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      userName = pulumi.Input.asOptionalInput<String>(userName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'userName': ?userName,
    };
  }

  factory GetGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupsArgs(
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policyName: map['policyName'] == null ? null : map['policyName'] as String,
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

