// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_control_policy_control_policy_args_doc}
/// The set of arguments for ControlPolicy.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_control_policy_control_policy_args_doc}
class ControlPolicyArgs {
  /// The new name of the access control policy.
  /// The name must be 1 to 128 characters in length. The name can contain letters, digits, and hyphens (-) and must start with a letter.
  final pulumi.Input<String> controlPolicyName;

  /// The new description of the access control policy.
  /// The description must be 1 to 1,024 characters in length. The description can contain letters, digits, underscores (\_), and hyphens (-) and must start with a letter.
  final pulumi.Input<String>? description;

  /// The effective scope of the access control policy. Valid values:
  ///
  /// - All: The access control policy is in effect for Alibaba Cloud accounts, RAM users, and RAM roles.
  /// - RAM: The access control policy is in effect only for RAM users and RAM roles.
  final pulumi.Input<String> effectScope;

  /// The new document of the access control policy.
  /// The document can be a maximum of 4,096 characters in length.
  /// For more information about the languages of access control policies, see [Languages of access control policies](https://www.alibabacloud.com/help/en/doc-detail/179096.html).
  /// For more information about the examples of access control policies, see [Examples of custom access control policies](https://www.alibabacloud.com/help/en/doc-detail/181474.html).
  final pulumi.Input<String> policyDocument;

  /// The tags.
  /// You can specify a maximum of 20 tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ControlPolicyArgs].
  /// [controlPolicyName] The new name of the access control policy.
  /// [description] The new description of the access control policy.
  /// [effectScope] The effective scope of the access control policy. Valid values:
  /// [policyDocument] The new document of the access control policy.
  /// [tags] The tags.
  ControlPolicyArgs({
    required this.controlPolicyName,
    this.description,
    required this.effectScope,
    required this.policyDocument,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPolicyName': controlPolicyName,
      'description': ?description,
      'effectScope': effectScope,
      'policyDocument': policyDocument,
      'tags': ?tags,
    };
  }

  factory ControlPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ControlPolicyArgs(
      controlPolicyName: pulumi.Input.fromValue(
        map['controlPolicyName'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectScope: pulumi.Input.fromValue(map['effectScope'] as String),
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
