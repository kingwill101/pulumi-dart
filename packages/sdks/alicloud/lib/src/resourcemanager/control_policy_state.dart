// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ControlPolicy resources.
class ControlPolicyState {
  /// The new name of the access control policy.
  /// The name must be 1 to 128 characters in length. The name can contain letters, digits, and hyphens (-) and must start with a letter.
  final pulumi.Input<String>? controlPolicyName;
  /// The time when the access control policy was created.
  final pulumi.Input<String>? createTime;
  /// The new description of the access control policy.
  /// The description must be 1 to 1,024 characters in length. The description can contain letters, digits, underscores (\_), and hyphens (-) and must start with a letter.
  final pulumi.Input<String>? description;
  /// The effective scope of the access control policy. Valid values:
  ///
  /// - All: The access control policy is in effect for Alibaba Cloud accounts, RAM users, and RAM roles.
  /// - RAM: The access control policy is in effect only for RAM users and RAM roles.
  final pulumi.Input<String>? effectScope;
  /// The new document of the access control policy.
  /// The document can be a maximum of 4,096 characters in length.
  /// For more information about the languages of access control policies, see [Languages of access control policies](https://www.alibabacloud.com/help/en/doc-detail/179096.html).
  /// For more information about the examples of access control policies, see [Examples of custom access control policies](https://www.alibabacloud.com/help/en/doc-detail/181474.html).
  final pulumi.Input<String>? policyDocument;
  /// The tags.
  /// You can specify a maximum of 20 tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ControlPolicyState].
  /// [controlPolicyName] The new name of the access control policy.
  /// [createTime] The time when the access control policy was created.
  /// [description] The new description of the access control policy.
  /// [effectScope] The effective scope of the access control policy. Valid values:
  /// [policyDocument] The new document of the access control policy.
  /// [tags] The tags.
  ControlPolicyState({
    pulumi.Output<String>? controlPolicyName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? effectScope,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      controlPolicyName = pulumi.Input.asOptionalInput<String>(controlPolicyName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectScope = pulumi.Input.asOptionalInput<String>(effectScope),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPolicyName': ?controlPolicyName,
      'createTime': ?createTime,
      'description': ?description,
      'effectScope': ?effectScope,
      'policyDocument': ?policyDocument,
      'tags': ?tags,
    };
  }

  factory ControlPolicyState.fromMap(Map<String, dynamic> map) {
    return ControlPolicyState(
      controlPolicyName: map['controlPolicyName'] == null ? null : pulumi.Output.create<String>(map['controlPolicyName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectScope: map['effectScope'] == null ? null : pulumi.Output.create<String>(map['effectScope'] as String),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

