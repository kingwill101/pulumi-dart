// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_multi_region_configuration.dart';
import 'get_key_xks_key_configuration.dart';

/// Result data returned by getKey.
class GetKeyResult {
  /// Key ARN of a primary or replica key of a multi-Region key.
  final String? arn;
  /// Twelve-digit account ID of the AWS account that owns the key.
  final String? awsAccountId;
  /// Cluster ID of the AWS CloudHSM cluster that contains the key material for the KMS key.
  final String? cloudHsmClusterId;
  /// Date and time when the key was created.
  final String? creationDate;
  /// Unique identifier for the custom key store that contains the KMS key.
  final String? customKeyStoreId;
  /// See `keySpec`.
  final String? customerMasterKeySpec;
  /// Date and time after which AWS KMS deletes the key. This value is present only when `keyState` is `PendingDeletion`, otherwise this value is 0.
  final String? deletionDate;
  /// Description of the key.
  final String? description;
  /// Whether the key is enabled. When `keyState` is `Enabled` this value is true, otherwise it is false.
  final bool? enabled;
  /// Whether the key's key material expires. This value is present only when `origin` is `EXTERNAL`, otherwise this value is empty.
  final String? expirationModel;
  final List<String>? grantTokens;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyId;
  /// Manager of the key.
  final String? keyManager;
  /// Type of key material in the KMS key.
  final String? keySpec;
  /// State of the key.
  final String? keyState;
  /// Intended use of the key.
  final String? keyUsage;
  /// Whether the KMS key is a multi-Region (`true`) or regional (`false`) key.
  final bool? multiRegion;
  /// Primary and replica keys in same multi-Region key. Present only when the value of `multiRegion` is `true`. See `multiRegionConfiguration` Block below.
  final List<GetKeyMultiRegionConfiguration>? multiRegionConfigurations;
  /// Source of the key material. When this value is `AWS_KMS`, AWS KMS created the key material. When this value is `EXTERNAL`, the key material was imported from your existing key management infrastructure or the CMK lacks key material.
  final String? origin;
  /// Waiting period before the primary key in a multi-Region key is deleted.
  final int? pendingDeletionWindowInDays;
  /// AWS Region of a primary or replica key in a multi-Region key.
  final String? region;
  /// Time at which the imported key material expires. This value is present only when `origin` is `EXTERNAL` and whose `expirationModel` is `KEY_MATERIAL_EXPIRES`, otherwise this value is 0.
  final String? validTo;
  /// Information about the external key that is associated with a KMS key in an external key store. See `xksKeyConfiguration` Block below.
  final List<GetKeyXksKeyConfiguration>? xksKeyConfigurations;

  /// Creates a new [GetKeyResult].
  /// [arn] Key ARN of a primary or replica key of a multi-Region key.
  /// [awsAccountId] Twelve-digit account ID of the AWS account that owns the key.
  /// [cloudHsmClusterId] Cluster ID of the AWS CloudHSM cluster that contains the key material for the KMS key.
  /// [creationDate] Date and time when the key was created.
  /// [customKeyStoreId] Unique identifier for the custom key store that contains the KMS key.
  /// [customerMasterKeySpec] See `keySpec`.
  /// [deletionDate] Date and time after which AWS KMS deletes the key. This value is present only when `keyState` is `PendingDeletion`, otherwise this value is 0.
  /// [description] Description of the key.
  /// [enabled] Whether the key is enabled. When `keyState` is `Enabled` this value is true, otherwise it is false.
  /// [expirationModel] Whether the key's key material expires. This value is present only when `origin` is `EXTERNAL`, otherwise this value is empty.
  /// [grantTokens] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyId] Optional.
  /// [keyManager] Manager of the key.
  /// [keySpec] Type of key material in the KMS key.
  /// [keyState] State of the key.
  /// [keyUsage] Intended use of the key.
  /// [multiRegion] Whether the KMS key is a multi-Region (`true`) or regional (`false`) key.
  /// [multiRegionConfigurations] Primary and replica keys in same multi-Region key. Present only when the value of `multiRegion` is `true`. See `multiRegionConfiguration` Block below.
  /// [origin] Source of the key material. When this value is `AWS_KMS`, AWS KMS created the key material. When this value is `EXTERNAL`, the key material was imported from your existing key management infrastructure or the CMK lacks key material.
  /// [pendingDeletionWindowInDays] Waiting period before the primary key in a multi-Region key is deleted.
  /// [region] AWS Region of a primary or replica key in a multi-Region key.
  /// [validTo] Time at which the imported key material expires. This value is present only when `origin` is `EXTERNAL` and whose `expirationModel` is `KEY_MATERIAL_EXPIRES`, otherwise this value is 0.
  /// [xksKeyConfigurations] Information about the external key that is associated with a KMS key in an external key store. See `xksKeyConfiguration` Block below.
  const GetKeyResult({
    this.arn,
    this.awsAccountId,
    this.cloudHsmClusterId,
    this.creationDate,
    this.customKeyStoreId,
    this.customerMasterKeySpec,
    this.deletionDate,
    this.description,
    this.enabled,
    this.expirationModel,
    this.grantTokens,
    this.id,
    this.keyId,
    this.keyManager,
    this.keySpec,
    this.keyState,
    this.keyUsage,
    this.multiRegion,
    this.multiRegionConfigurations,
    this.origin,
    this.pendingDeletionWindowInDays,
    this.region,
    this.validTo,
    this.xksKeyConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'cloudHsmClusterId': ?cloudHsmClusterId,
      'creationDate': ?creationDate,
      'customKeyStoreId': ?customKeyStoreId,
      'customerMasterKeySpec': ?customerMasterKeySpec,
      'deletionDate': ?deletionDate,
      'description': ?description,
      'enabled': ?enabled,
      'expirationModel': ?expirationModel,
      'grantTokens': ?grantTokens,
      'id': ?id,
      'keyId': ?keyId,
      'keyManager': ?keyManager,
      'keySpec': ?keySpec,
      'keyState': ?keyState,
      'keyUsage': ?keyUsage,
      'multiRegion': ?multiRegion,
      'multiRegionConfigurations': ?(() { final guardedValue = multiRegionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeyMultiRegionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'origin': ?origin,
      'pendingDeletionWindowInDays': ?pendingDeletionWindowInDays,
      'region': ?region,
      'validTo': ?validTo,
      'xksKeyConfigurations': ?(() { final guardedValue = xksKeyConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetKeyXksKeyConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudHsmClusterId: (() { final guardedValue = map['cloudHsmClusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customKeyStoreId: (() { final guardedValue = map['customKeyStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerMasterKeySpec: (() { final guardedValue = map['customerMasterKeySpec']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionDate: (() { final guardedValue = map['deletionDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expirationModel: (() { final guardedValue = map['expirationModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      grantTokens: (() { final guardedValue = map['grantTokens']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyManager: (() { final guardedValue = map['keyManager']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keySpec: (() { final guardedValue = map['keySpec']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyState: (() { final guardedValue = map['keyState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyUsage: (() { final guardedValue = map['keyUsage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiRegion: (() { final guardedValue = map['multiRegion']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      multiRegionConfigurations: (() { final guardedValue = map['multiRegionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeyMultiRegionConfiguration>(guardedValue, (value) => GetKeyMultiRegionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingDeletionWindowInDays: (() { final guardedValue = map['pendingDeletionWindowInDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validTo: (() { final guardedValue = map['validTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      xksKeyConfigurations: (() { final guardedValue = map['xksKeyConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetKeyXksKeyConfiguration>(guardedValue, (value) => GetKeyXksKeyConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
