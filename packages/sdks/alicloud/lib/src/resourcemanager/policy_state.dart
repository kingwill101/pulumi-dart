// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// The version of the policy. Default to v1.
  final pulumi.Input<String>? defaultVersion;
  /// The description of the policy. The description must be 1 to 1,024 characters in length.
  final pulumi.Input<String>? description;
  /// The content of the policy. The content must be 1 to 2,048 characters in length.
  final pulumi.Input<String>? policyDocument;
  /// The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  final pulumi.Input<String>? policyName;
  /// The type of the policy. Valid values: `Custom`, `System`.
  final pulumi.Input<String>? policyType;

  /// Creates a new [PolicyState].
  /// [defaultVersion] The version of the policy. Default to v1.
  /// [description] The description of the policy. The description must be 1 to 1,024 characters in length.
  /// [policyDocument] The content of the policy. The content must be 1 to 2,048 characters in length.
  /// [policyName] The name of the policy. name must be 1 to 128 characters in length and can contain letters, digits, and hyphens (-).
  /// [policyType] The type of the policy. Valid values: `Custom`, `System`.
  PolicyState({
    this.defaultVersion,
    this.description,
    this.policyDocument,
    this.policyName,
    this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVersion': ?defaultVersion,
      'description': ?description,
      'policyDocument': ?policyDocument,
      'policyName': ?policyName,
      'policyType': ?policyType,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      defaultVersion: map['defaultVersion'] == null ? null : (map['defaultVersion']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      policyDocument: map['policyDocument'] == null ? null : (map['policyDocument']! as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType']! as String).input(),
    );
  }
}

