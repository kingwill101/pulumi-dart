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
      attachmentCount: (map['attachmentCount'] as int).input(),
      createDate: (map['createDate'] as String).input(),
      defaultVersion: (map['defaultVersion'] as String).input(),
      description: (map['description'] as String).input(),
      document: (map['document'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      policyDocument: (map['policyDocument'] as String).input(),
      policyName: (map['policyName'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      updateDate: (map['updateDate'] as String).input(),
      userName: (map['userName'] as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

