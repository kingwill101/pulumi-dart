// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_policy_policy_args_doc}
class PolicyArgs {
  /// The version of the policy. Default to v1.
  final pulumi.Input<String>? defaultVersion;
  /// The description of the policy. The description must be 1 to 1,024 characters in length.
  final pulumi.Input<String>? description;
  /// The content of the policy. The content must be 1 to 2,048 characters in length.
  final pulumi.Input<String> policyDocument;
  /// The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String> policyName;

  /// Creates a new [PolicyArgs].
  /// [defaultVersion] The version of the policy. Default to v1.
  /// [description] The description of the policy. The description must be 1 to 1,024 characters in length.
  /// [policyDocument] The content of the policy. The content must be 1 to 2,048 characters in length.
  /// [policyName] The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  PolicyArgs({
    String? defaultVersion,
    String? description,
    required String policyDocument,
    required String policyName,
  }) :
      defaultVersion = pulumi.Input.asOptionalInput<String>(defaultVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      policyDocument = pulumi.Input.asInput<String>(policyDocument),
      policyName = pulumi.Input.asInput<String>(policyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVersion': ?defaultVersion,
      'description': ?description,
      'policyDocument': policyDocument,
      'policyName': policyName,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      defaultVersion: map['defaultVersion'] == null ? null : map['defaultVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      policyDocument: map['policyDocument'] as String,
      policyName: map['policyName'] as String,
    );
  }
}

