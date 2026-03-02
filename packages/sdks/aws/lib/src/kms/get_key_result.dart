// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_multi_region_configuration.dart';
import 'get_key_xks_key_configuration.dart';

/// Result data returned by getKey.
class GetKeyResult {
  /// The key ARN of a primary or replica key of a multi-Region key.
  final String arn;
  /// The twelve-digit account ID of the AWS account that owns the key
  final String awsAccountId;
  /// The cluster ID of the AWS CloudHSM cluster that contains the key material for the KMS key.
  final String cloudHsmClusterId;
  /// The date and time when the key was created
  final String creationDate;
  /// A unique identifier for the custom key store that contains the KMS key.
  final String customKeyStoreId;
  /// See `key_spec`.
  final String customerMasterKeySpec;
  /// The date and time after which AWS KMS deletes the key. This value is present only when `key_state` is `PendingDeletion`, otherwise this value is 0
  final String deletionDate;
  /// The description of the key.
  final String description;
  /// Specifies whether the key is enabled. When `key_state` is `Enabled` this value is true, otherwise it is false
  final bool enabled;
  /// Specifies whether the Key's key material expires. This value is present only when `origin` is `EXTERNAL`, otherwise this value is empty
  final String expirationModel;
  final List<String>? grantTokens;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyId;
  /// The key's manager
  final String keyManager;
  /// Describes the type of key material in the KMS key.
  final String keySpec;
  /// The state of the key
  final String keyState;
  /// Specifies the intended use of the key
  final String keyUsage;
  /// Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key.
  final bool multiRegion;
  /// Lists the primary and replica keys in same multi-Region key. Present only when the value of `multi_region` is `true`.
  final List<GetKeyMultiRegionConfiguration> multiRegionConfigurations;
  /// When this value is `AWS_KMS`, AWS KMS created the key material. When this value is `EXTERNAL`, the key material was imported from your existing key management infrastructure or the CMK lacks key material
  final String origin;
  /// The waiting period before the primary key in a multi-Region key is deleted.
  final int pendingDeletionWindowInDays;
  /// The AWS Region of a primary or replica key in a multi-Region key.
  final String region;
  /// The time at which the imported key material expires. This value is present only when `origin` is `EXTERNAL` and whose `expiration_model` is `KEY_MATERIAL_EXPIRES`, otherwise this value is 0
  final String validTo;
  /// Information about the external key that is associated with a KMS key in an external key store.
  final List<GetKeyXksKeyConfiguration> xksKeyConfigurations;

  /// Creates a new [GetKeyResult].
  /// [arn] The key ARN of a primary or replica key of a multi-Region key.
  /// [awsAccountId] The twelve-digit account ID of the AWS account that owns the key
  /// [cloudHsmClusterId] The cluster ID of the AWS CloudHSM cluster that contains the key material for the KMS key.
  /// [creationDate] The date and time when the key was created
  /// [customKeyStoreId] A unique identifier for the custom key store that contains the KMS key.
  /// [customerMasterKeySpec] See `key_spec`.
  /// [deletionDate] The date and time after which AWS KMS deletes the key. This value is present only when `key_state` is `PendingDeletion`, otherwise this value is 0
  /// [description] The description of the key.
  /// [enabled] Specifies whether the key is enabled. When `key_state` is `Enabled` this value is true, otherwise it is false
  /// [expirationModel] Specifies whether the Key's key material expires. This value is present only when `origin` is `EXTERNAL`, otherwise this value is empty
  /// [grantTokens] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyId] Required.
  /// [keyManager] The key's manager
  /// [keySpec] Describes the type of key material in the KMS key.
  /// [keyState] The state of the key
  /// [keyUsage] Specifies the intended use of the key
  /// [multiRegion] Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key.
  /// [multiRegionConfigurations] Lists the primary and replica keys in same multi-Region key. Present only when the value of `multi_region` is `true`.
  /// [origin] When this value is `AWS_KMS`, AWS KMS created the key material. When this value is `EXTERNAL`, the key material was imported from your existing key management infrastructure or the CMK lacks key material
  /// [pendingDeletionWindowInDays] The waiting period before the primary key in a multi-Region key is deleted.
  /// [region] The AWS Region of a primary or replica key in a multi-Region key.
  /// [validTo] The time at which the imported key material expires. This value is present only when `origin` is `EXTERNAL` and whose `expiration_model` is `KEY_MATERIAL_EXPIRES`, otherwise this value is 0
  /// [xksKeyConfigurations] Information about the external key that is associated with a KMS key in an external key store.
  GetKeyResult({
    required this.arn,
    required this.awsAccountId,
    required this.cloudHsmClusterId,
    required this.creationDate,
    required this.customKeyStoreId,
    required this.customerMasterKeySpec,
    required this.deletionDate,
    required this.description,
    required this.enabled,
    required this.expirationModel,
    this.grantTokens,
    required this.id,
    required this.keyId,
    required this.keyManager,
    required this.keySpec,
    required this.keyState,
    required this.keyUsage,
    required this.multiRegion,
    required this.multiRegionConfigurations,
    required this.origin,
    required this.pendingDeletionWindowInDays,
    required this.region,
    required this.validTo,
    required this.xksKeyConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'awsAccountId': awsAccountId,
      'cloudHsmClusterId': cloudHsmClusterId,
      'creationDate': creationDate,
      'customKeyStoreId': customKeyStoreId,
      'customerMasterKeySpec': customerMasterKeySpec,
      'deletionDate': deletionDate,
      'description': description,
      'enabled': enabled,
      'expirationModel': expirationModel,
      'grantTokens': ?grantTokens,
      'id': id,
      'keyId': keyId,
      'keyManager': keyManager,
      'keySpec': keySpec,
      'keyState': keyState,
      'keyUsage': keyUsage,
      'multiRegion': multiRegion,
      'multiRegionConfigurations': pulumi.Input.encodeList<GetKeyMultiRegionConfiguration, Map<String, dynamic>>(multiRegionConfigurations, (value) => value.toMap()),
      'origin': origin,
      'pendingDeletionWindowInDays': pendingDeletionWindowInDays,
      'region': region,
      'validTo': validTo,
      'xksKeyConfigurations': pulumi.Input.encodeList<GetKeyXksKeyConfiguration, Map<String, dynamic>>(xksKeyConfigurations, (value) => value.toMap()),
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      arn: map['arn'] as String,
      awsAccountId: map['awsAccountId'] as String,
      cloudHsmClusterId: map['cloudHsmClusterId'] as String,
      creationDate: map['creationDate'] as String,
      customKeyStoreId: map['customKeyStoreId'] as String,
      customerMasterKeySpec: map['customerMasterKeySpec'] as String,
      deletionDate: map['deletionDate'] as String,
      description: map['description'] as String,
      enabled: map['enabled'] as bool,
      expirationModel: map['expirationModel'] as String,
      grantTokens: map['grantTokens'] == null ? null : (map['grantTokens'] as List).cast<String>(),
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      keyManager: map['keyManager'] as String,
      keySpec: map['keySpec'] as String,
      keyState: map['keyState'] as String,
      keyUsage: map['keyUsage'] as String,
      multiRegion: map['multiRegion'] as bool,
      multiRegionConfigurations: pulumi.Input.decodeList<GetKeyMultiRegionConfiguration>(map['multiRegionConfigurations']!, (value) => GetKeyMultiRegionConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      origin: map['origin'] as String,
      pendingDeletionWindowInDays: map['pendingDeletionWindowInDays'] as int,
      region: map['region'] as String,
      validTo: map['validTo'] as String,
      xksKeyConfigurations: pulumi.Input.decodeList<GetKeyXksKeyConfiguration>(map['xksKeyConfigurations']!, (value) => GetKeyXksKeyConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

