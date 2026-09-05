// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_store_validation_setting.dart';

/// Result data returned by getPolicyStore.
class GetPolicyStoreResult {
  /// The ARN of the Policy Store.
  final String? arn;
  /// The date the Policy Store was created.
  final String? createdDate;
  /// Whether the policy store can be deleted.
  final String? deletionProtection;
  final String? description;
  final String? id;
  /// The date the Policy Store was last updated.
  final String? lastUpdatedDate;
  final String? region;
  /// Map of key-value pairs associated with the policy store.
  final Map<String, String>? tags;
  /// Validation settings for the policy store.
  final List<GetPolicyStoreValidationSetting>? validationSettings;

  /// Creates a new [GetPolicyStoreResult].
  /// [arn] The ARN of the Policy Store.
  /// [createdDate] The date the Policy Store was created.
  /// [deletionProtection] Whether the policy store can be deleted.
  /// [description] Optional.
  /// [id] Optional.
  /// [lastUpdatedDate] The date the Policy Store was last updated.
  /// [region] Optional.
  /// [tags] Map of key-value pairs associated with the policy store.
  /// [validationSettings] Validation settings for the policy store.
  const GetPolicyStoreResult({
    this.arn,
    this.createdDate,
    this.deletionProtection,
    this.description,
    this.id,
    this.lastUpdatedDate,
    this.region,
    this.tags,
    this.validationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'id': ?id,
      'lastUpdatedDate': ?lastUpdatedDate,
      'region': ?region,
      'tags': ?tags,
      'validationSettings': ?(() { final guardedValue = validationSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPolicyStoreValidationSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPolicyStoreResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyStoreResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedDate: (() { final guardedValue = map['lastUpdatedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      validationSettings: (() { final guardedValue = map['validationSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPolicyStoreValidationSetting>(guardedValue, (value) => GetPolicyStoreValidationSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
