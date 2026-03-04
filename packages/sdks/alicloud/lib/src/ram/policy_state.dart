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
      'statements':
          ?pulumi.Input.mapOptionalInputValue<
            List<PolicyStatement>,
            List<Map<String, dynamic>>
          >(
            statements,
            (value) =>
                pulumi.Input.encodeList<PolicyStatement, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
      'versionId': ?versionId,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      attachmentCount: (() {
        final guardedValue = map['attachmentCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      document: (() {
        final guardedValue = map['document'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyDocument: (() {
        final guardedValue = map['policyDocument'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyName: (() {
        final guardedValue = map['policyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rotateStrategy: (() {
        final guardedValue = map['rotateStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statements: (() {
        final guardedValue = map['statements'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PolicyStatement>(
            guardedValue,
            (value) =>
                PolicyStatement.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versionId: (() {
        final guardedValue = map['versionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
