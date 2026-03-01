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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

