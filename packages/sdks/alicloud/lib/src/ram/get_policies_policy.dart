// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoliciesPolicy {
  /// The number of references to the policy.
  final pulumi.Input<int> attachmentCount;
  /// The time when the policy was created.
  final pulumi.Input<String> createDate;
  /// The default version of the policy.
  final pulumi.Input<String> defaultVersion;
  /// The description of the policy.
  final pulumi.Input<String> description;
  /// The document of the policy. **Note:** `document` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> document;
  /// (Available since v1.114.0) The ID of the Policy.
  final pulumi.Input<String> id;
  /// The name of the policy.
  final pulumi.Input<String> name;
  /// (Available since v1.114.0) The document of the policy. **Note:** `policy_document` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> policyDocument;
  /// (Available since v1.114.0) The name of the policy.
  final pulumi.Input<String> policyName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The type of the policy. Valid values: `System` and `Custom`.
  final pulumi.Input<String> type;
  /// The time when the policy was modified.
  final pulumi.Input<String> updateDate;
  /// The name of the RAM user.
  final pulumi.Input<String> userName;
  /// (Available since v1.114.0) The ID of the default policy version. **Note:** `version_id` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<String> versionId;

  /// Creates a new [GetPoliciesPolicy].
  /// [attachmentCount] The number of references to the policy.
  /// [createDate] The time when the policy was created.
  /// [defaultVersion] The default version of the policy.
  /// [description] The description of the policy.
  /// [document] The document of the policy. **Note:** `document` takes effect only if `enable_details` is set to `true`.
  /// [id] (Available since v1.114.0) The ID of the Policy.
  /// [name] The name of the policy.
  /// [policyDocument] (Available since v1.114.0) The document of the policy. **Note:** `policy_document` takes effect only if `enable_details` is set to `true`.
  /// [policyName] (Available since v1.114.0) The name of the policy.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The type of the policy. Valid values: `System` and `Custom`.
  /// [updateDate] The time when the policy was modified.
  /// [userName] The name of the RAM user.
  /// [versionId] (Available since v1.114.0) The ID of the default policy version. **Note:** `version_id` takes effect only if `enable_details` is set to `true`.
  GetPoliciesPolicy({
    required this.attachmentCount,
    required this.createDate,
    required this.defaultVersion,
    required this.description,
    required this.document,
    required this.id,
    required this.name,
    required this.policyDocument,
    required this.policyName,
    required this.tags,
    required this.type,
    required this.updateDate,
    required this.userName,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentCount': attachmentCount,
      'createDate': createDate,
      'defaultVersion': defaultVersion,
      'description': description,
      'document': document,
      'id': id,
      'name': name,
      'policyDocument': policyDocument,
      'policyName': policyName,
      'tags': tags,
      'type': type,
      'updateDate': updateDate,
      'userName': userName,
      'versionId': versionId,
    };
  }

  factory GetPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetPoliciesPolicy(
      attachmentCount: pulumi.Input.fromValue(map['attachmentCount'] as int),
      createDate: pulumi.Input.fromValue(map['createDate'] as String),
      defaultVersion: pulumi.Input.fromValue(map['defaultVersion'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      document: pulumi.Input.fromValue(map['document'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policyDocument: pulumi.Input.fromValue(map['policyDocument'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateDate: pulumi.Input.fromValue(map['updateDate'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}

