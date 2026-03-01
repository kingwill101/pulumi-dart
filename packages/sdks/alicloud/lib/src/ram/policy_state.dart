// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_statement.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// Number of attachments of the policy.
  final pulumi.Input<int>? attachmentCount;
  /// (Available since v1.246.0) The create time of the policy.
  final pulumi.Input<String>? createTime;
  /// The default version ID of the policy.
  final pulumi.Input<String>? defaultVersion;
  /// The description of the policy. It can be 1 to 1024 characters in length.
  final pulumi.Input<String>? description;
  /// Field `document` has been deprecated from provider version 1.114.0. New field `policy_document` instead.
  final pulumi.Input<String>? document;
  /// Specifies whether to force delete the Policy. Default value: `false`. Valid values:
  final pulumi.Input<bool>? force;
  /// Field `name` has been deprecated from provider version 1.114.0. New field `policy_name` instead.
  final pulumi.Input<String>? name;
  /// The content of the policy. The maximum length is 6144 bytes.
  final pulumi.Input<String>? policyDocument;
  /// The policy name. It can be 1 to 128 characters in length and can contain English letters, digits, and dashes (-).
  final pulumi.Input<String>? policyName;
  /// The automatic rotation mechanism of policy versions can delete historical policy versions. The default value is None. Valid values:
  /// - `None`: Turn off the rotation mechanism.
  /// - `DeleteOldestNonDefaultVersionWhenLimitExceeded`: When the number of permission policy versions exceeds the limit, the oldest and inactive version is deleted.
  final pulumi.Input<String>? rotateStrategy;
  /// Field `statement` has been deprecated from provider version 1.49.0. New field `document` instead. See `statement` below.
  final pulumi.Input<List<PolicyStatement>>? statements;
  /// The list of tags on the policy.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the policy.
  final pulumi.Input<String>? type;
  /// Field `version` has been deprecated from provider version 1.49.0. New field `document` instead.
  final pulumi.Input<String>? version;
  /// The ID of the default policy version.
  final pulumi.Input<String>? versionId;

  /// Creates a new [PolicyState].
  /// [attachmentCount] Number of attachments of the policy.
  /// [createTime] (Available since v1.246.0) The create time of the policy.
  /// [defaultVersion] The default version ID of the policy.
  /// [description] The description of the policy. It can be 1 to 1024 characters in length.
  /// [document] Field `document` has been deprecated from provider version 1.114.0. New field `policy_document` instead.
  /// [force] Specifies whether to force delete the Policy. Default value: `false`. Valid values:
  /// [name] Field `name` has been deprecated from provider version 1.114.0. New field `policy_name` instead.
  /// [policyDocument] The content of the policy. The maximum length is 6144 bytes.
  /// [policyName] The policy name. It can be 1 to 128 characters in length and can contain English letters, digits, and dashes (-).
  /// [rotateStrategy] The automatic rotation mechanism of policy versions can delete historical policy versions. The default value is None. Valid values:
  /// [statements] Field `statement` has been deprecated from provider version 1.49.0. New field `document` instead. See `statement` below.
  /// [tags] The list of tags on the policy.
  /// [type] The type of the policy.
  /// [version] Field `version` has been deprecated from provider version 1.49.0. New field `document` instead.
  /// [versionId] The ID of the default policy version.
  PolicyState({
    pulumi.Output<int>? attachmentCount,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? defaultVersion,
    pulumi.Output<String>? description,
    pulumi.Output<String>? document,
    pulumi.Output<bool>? force,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? rotateStrategy,
    pulumi.Output<List<PolicyStatement>>? statements,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? version,
    pulumi.Output<String>? versionId,
  }) :
      attachmentCount = pulumi.Input.asOptionalInput<int>(attachmentCount),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      defaultVersion = pulumi.Input.asOptionalInput<String>(defaultVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      document = pulumi.Input.asOptionalInput<String>(document),
      force = pulumi.Input.asOptionalInput<bool>(force),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      rotateStrategy = pulumi.Input.asOptionalInput<String>(rotateStrategy),
      statements = pulumi.Input.asOptionalInput<List<PolicyStatement>>(statements),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      version = pulumi.Input.asOptionalInput<String>(version),
      versionId = pulumi.Input.asOptionalInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentCount': ?attachmentCount,
      'createTime': ?createTime,
      'defaultVersion': ?defaultVersion,
      'description': ?description,
      'document': ?document,
      'force': ?force,
      'name': ?name,
      'policyDocument': ?policyDocument,
      'policyName': ?policyName,
      'rotateStrategy': ?rotateStrategy,
      'statements': ?pulumi.Input.mapOptionalInputValue<List<PolicyStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<PolicyStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
      'versionId': ?versionId,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      attachmentCount: map['attachmentCount'] == null ? null : pulumi.Output.create<int>(map['attachmentCount'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      defaultVersion: map['defaultVersion'] == null ? null : pulumi.Output.create<String>(map['defaultVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      document: map['document'] == null ? null : pulumi.Output.create<String>(map['document'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<bool>(map['force'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      rotateStrategy: map['rotateStrategy'] == null ? null : pulumi.Output.create<String>(map['rotateStrategy'] as String),
      statements: map['statements'] == null ? null : pulumi.Output.create<List<PolicyStatement>>(pulumi.Input.decodeList<PolicyStatement>(map['statements'], (value) => PolicyStatement.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      versionId: map['versionId'] == null ? null : pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

