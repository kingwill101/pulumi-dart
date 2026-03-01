// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolicyVersion resources.
class PolicyVersionState {
  /// Specifies whether to set the policy version as the default version. Default to `false`.
  final pulumi.Input<bool>? isDefaultVersion;
  /// The content of the policy. The content must be 1 to 2,048 characters in length.
  final pulumi.Input<String>? policyDocument;
  /// The name of the policy. Name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String>? policyName;

  /// Creates a new [PolicyVersionState].
  /// [isDefaultVersion] Specifies whether to set the policy version as the default version. Default to `false`.
  /// [policyDocument] The content of the policy. The content must be 1 to 2,048 characters in length.
  /// [policyName] The name of the policy. Name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  PolicyVersionState({
    pulumi.Output<bool>? isDefaultVersion,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<String>? policyName,
  }) :
      isDefaultVersion = pulumi.Input.asOptionalInput<bool>(isDefaultVersion),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      policyName = pulumi.Input.asOptionalInput<String>(policyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDefaultVersion': ?isDefaultVersion,
      'policyDocument': ?policyDocument,
      'policyName': ?policyName,
    };
  }

  factory PolicyVersionState.fromMap(Map<String, dynamic> map) {
    return PolicyVersionState(
      isDefaultVersion: map['isDefaultVersion'] == null ? null : pulumi.Output.create<bool>(map['isDefaultVersion'] as bool),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
    );
  }
}

