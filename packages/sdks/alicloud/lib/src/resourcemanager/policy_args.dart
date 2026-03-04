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
    this.defaultVersion,
    this.description,
    required this.policyDocument,
    required this.policyName,
  });

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
      defaultVersion: (() {
        final guardedValue = map['defaultVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
    );
  }
}
