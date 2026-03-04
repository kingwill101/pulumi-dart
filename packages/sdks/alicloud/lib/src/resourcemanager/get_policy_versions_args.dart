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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
    );
  }
}
