// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_policy_versions_get_policy_versions_args_doc}
/// Arguments for getPolicyVersions.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_policy_versions_get_policy_versions_args_doc}
class GetPolicyVersionsArgs {
  /// Default to `false`. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// A list of policy version IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the policy.
  final pulumi.Input<String> policyName;
  /// The type of the policy. Valid values:`Custom` and `System`.
  final pulumi.Input<String> policyType;

  /// Creates a new [GetPolicyVersionsArgs].
  /// [enableDetails] Default to `false`. Set it to true can output more details.
  /// [ids] A list of policy version IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyName] The name of the policy.
  /// [policyType] The type of the policy. Valid values:`Custom` and `System`.
  GetPolicyVersionsArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> policyType,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      policyName = pulumi.Input.asInput<String>(policyName),
      policyType = pulumi.Input.asInput<String>(policyType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'policyName': policyName,
      'policyType': policyType,
    };
  }

  factory GetPolicyVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyVersionsArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      policyType: pulumi.Output.create<String>(map['policyType'] as String),
    );
  }
}

