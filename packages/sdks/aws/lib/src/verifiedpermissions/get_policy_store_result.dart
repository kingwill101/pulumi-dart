// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_store_validation_setting.dart';

/// Result data returned by getPolicyStore.
class GetPolicyStoreResult {
  /// The ARN of the Policy Store.
  final String arn;
  /// The date the Policy Store was created.
  final String createdDate;
  /// Whether the policy store can be deleted.
  final String deletionProtection;
  final String description;
  final String id;
  /// The date the Policy Store was last updated.
  final String lastUpdatedDate;
  final String region;
  /// Map of key-value pairs associated with the policy store.
  final Map<String, String> tags;
  /// Validation settings for the policy store.
  final List<GetPolicyStoreValidationSetting> validationSettings;

  /// Creates a new [GetPolicyStoreResult].
  /// [arn] The ARN of the Policy Store.
  /// [createdDate] The date the Policy Store was created.
  /// [deletionProtection] Whether the policy store can be deleted.
  /// [description] Required.
  /// [id] Required.
  /// [lastUpdatedDate] The date the Policy Store was last updated.
  /// [region] Required.
  /// [tags] Map of key-value pairs associated with the policy store.
  /// [validationSettings] Validation settings for the policy store.
  GetPolicyStoreResult({
    required this.arn,
    required this.createdDate,
    required this.deletionProtection,
    required this.description,
    required this.id,
    required this.lastUpdatedDate,
    required this.region,
    required this.tags,
    required this.validationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdDate': createdDate,
      'deletionProtection': deletionProtection,
      'description': description,
      'id': id,
      'lastUpdatedDate': lastUpdatedDate,
      'region': region,
      'tags': tags,
      'validationSettings': pulumi.Input.encodeList<GetPolicyStoreValidationSetting, Map<String, dynamic>>(validationSettings, (value) => value.toMap()),
    };
  }

  factory GetPolicyStoreResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyStoreResult(
      arn: map['arn'] as String,
      createdDate: map['createdDate'] as String,
      deletionProtection: map['deletionProtection'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lastUpdatedDate: map['lastUpdatedDate'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      validationSettings: pulumi.Input.decodeList<GetPolicyStoreValidationSetting>(map['validationSettings']!, (value) => GetPolicyStoreValidationSetting.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

