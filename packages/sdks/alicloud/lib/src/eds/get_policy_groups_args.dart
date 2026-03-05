// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_policy_groups_get_policy_groups_args_doc}
/// Arguments for getPolicyGroups.
/// {@endtemplate}
/// {@macro pulumi_eds_get_policy_groups_get_policy_groups_args_doc}
class GetPolicyGroupsArgs {
  /// A list of Policy Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Policy Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of policy.
  final pulumi.Input<String>? status;

  /// Creates a new [GetPolicyGroupsArgs].
  /// [ids] A list of Policy Group IDs.
  /// [nameRegex] A regex string to filter results by Policy Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of policy.
  GetPolicyGroupsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetPolicyGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyGroupsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

