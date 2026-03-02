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
    this.enableDetails,
    this.ids,
    this.outputFile,
    required this.policyName,
    required this.policyType,
  });

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
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      policyName: (map['policyName'] as String).input(),
      policyType: (map['policyType'] as String).input(),
    );
  }
}

