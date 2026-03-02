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
    this.attachmentCount,
    this.createTime,
    this.defaultVersion,
    this.description,
    this.document,
    this.force,
    this.name,
    this.policyDocument,
    this.policyName,
    this.rotateStrategy,
    this.statements,
    this.tags,
    this.type,
    this.version,
    this.versionId,
  });

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
      attachmentCount: map['attachmentCount'] == null ? null : (map['attachmentCount']! as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      defaultVersion: map['defaultVersion'] == null ? null : (map['defaultVersion']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      document: map['document'] == null ? null : (map['document']! as String).input(),
      force: map['force'] == null ? null : (map['force']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyDocument: map['policyDocument'] == null ? null : (map['policyDocument']! as String).input(),
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      rotateStrategy: map['rotateStrategy'] == null ? null : (map['rotateStrategy']! as String).input(),
      statements: map['statements'] == null ? null : (pulumi.Input.decodeList<PolicyStatement>(map['statements']!, (value) => PolicyStatement.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      versionId: map['versionId'] == null ? null : (map['versionId']! as String).input(),
    );
  }
}

