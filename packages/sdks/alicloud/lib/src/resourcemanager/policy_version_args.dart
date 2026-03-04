// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_policy_version_policy_version_args_doc}
/// The set of arguments for PolicyVersion.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_policy_version_policy_version_args_doc}
class PolicyVersionArgs {
  /// Specifies whether to set the policy version as the default version. Default to `false`.
  final pulumi.Input<bool>? isDefaultVersion;

  /// The content of the policy. The content must be 1 to 2,048 characters in length.
  final pulumi.Input<String> policyDocument;

  /// The name of the policy. Name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String> policyName;

  /// Creates a new [PolicyVersionArgs].
  /// [isDefaultVersion] Specifies whether to set the policy version as the default version. Default to `false`.
  /// [policyDocument] The content of the policy. The content must be 1 to 2,048 characters in length.
  /// [policyName] The name of the policy. Name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  PolicyVersionArgs({
    this.isDefaultVersion,
    required this.policyDocument,
    required this.policyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefaultVersion': ?isDefaultVersion,
      'policyDocument': policyDocument,
      'policyName': policyName,
    };
  }

  factory PolicyVersionArgs.fromMap(Map<String, dynamic> map) {
    return PolicyVersionArgs(
      isDefaultVersion: (() {
        final guardedValue = map['isDefaultVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
    );
  }
}
