// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_key_multi_region_configuration/get_key_multi_region_configuration.dart';
import '../get_key_xks_key_configuration/get_key_xks_key_configuration.dart';

/// Result data returned by getKey.
class GetKeyResult2 {
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

  /// See <span pulumi-lang-nodejs="`keySpec`" pulumi-lang-dotnet="`KeySpec`" pulumi-lang-go="`keySpec`" pulumi-lang-python="`key_spec`" pulumi-lang-yaml="`keySpec`" pulumi-lang-java="`keySpec`">`key_spec`</span>.
  final String customerMasterKeySpec;

  /// The date and time after which AWS KMS deletes the key. This value is present only when <span pulumi-lang-nodejs="`keyState`" pulumi-lang-dotnet="`KeyState`" pulumi-lang-go="`keyState`" pulumi-lang-python="`key_state`" pulumi-lang-yaml="`keyState`" pulumi-lang-java="`keyState`">`key_state`</span> is `PendingDeletion`, otherwise this value is 0
  final String deletionDate;

  /// The description of the key.
  final String description;

  /// Specifies whether the key is enabled. When <span pulumi-lang-nodejs="`keyState`" pulumi-lang-dotnet="`KeyState`" pulumi-lang-go="`keyState`" pulumi-lang-python="`key_state`" pulumi-lang-yaml="`keyState`" pulumi-lang-java="`keyState`">`key_state`</span> is `Enabled` this value is true, otherwise it is false
  final bool enabled;

  /// Specifies whether the Key's key material expires. This value is present only when <span pulumi-lang-nodejs="`origin`" pulumi-lang-dotnet="`Origin`" pulumi-lang-go="`origin`" pulumi-lang-python="`origin`" pulumi-lang-yaml="`origin`" pulumi-lang-java="`origin`">`origin`</span> is `EXTERNAL`, otherwise this value is empty
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

  /// Indicates whether the KMS key is a multi-Region (<span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>) or regional (<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>) key.
  final bool multiRegion;

  /// Lists the primary and replica keys in same multi-Region key. Present only when the value of <span pulumi-lang-nodejs="`multiRegion`" pulumi-lang-dotnet="`MultiRegion`" pulumi-lang-go="`multiRegion`" pulumi-lang-python="`multi_region`" pulumi-lang-yaml="`multiRegion`" pulumi-lang-java="`multiRegion`">`multi_region`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final List<GetKeyMultiRegionConfiguration> multiRegionConfigurations;

  /// When this value is `AWS_KMS`, AWS KMS created the key material. When this value is `EXTERNAL`, the key material was imported from your existing key management infrastructure or the CMK lacks key material
  final String origin;

  /// The waiting period before the primary key in a multi-Region key is deleted.
  final int pendingDeletionWindowInDays;

  /// The AWS Region of a primary or replica key in a multi-Region key.
  final String region;

  /// The time at which the imported key material expires. This value is present only when <span pulumi-lang-nodejs="`origin`" pulumi-lang-dotnet="`Origin`" pulumi-lang-go="`origin`" pulumi-lang-python="`origin`" pulumi-lang-yaml="`origin`" pulumi-lang-java="`origin`">`origin`</span> is `EXTERNAL` and whose <span pulumi-lang-nodejs="`expirationModel`" pulumi-lang-dotnet="`ExpirationModel`" pulumi-lang-go="`expirationModel`" pulumi-lang-python="`expiration_model`" pulumi-lang-yaml="`expirationModel`" pulumi-lang-java="`expirationModel`">`expiration_model`</span> is `KEY_MATERIAL_EXPIRES`, otherwise this value is 0
  final String validTo;

  /// Information about the external key that is associated with a KMS key in an external key store.
  final List<GetKeyXksKeyConfiguration> xksKeyConfigurations;

  GetKeyResult2({
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['awsAccountId'] = awsAccountId;
    map['cloudHsmClusterId'] = cloudHsmClusterId;
    map['creationDate'] = creationDate;
    map['customKeyStoreId'] = customKeyStoreId;
    map['customerMasterKeySpec'] = customerMasterKeySpec;
    map['deletionDate'] = deletionDate;
    map['description'] = description;
    map['enabled'] = enabled;
    map['expirationModel'] = expirationModel;
    final grantTokensValue = grantTokens;
    if (grantTokensValue != null) {
      map['grantTokens'] = grantTokensValue;
    }
    map['id'] = id;
    map['keyId'] = keyId;
    map['keyManager'] = keyManager;
    map['keySpec'] = keySpec;
    map['keyState'] = keyState;
    map['keyUsage'] = keyUsage;
    map['multiRegion'] = multiRegion;
    map['multiRegionConfigurations'] =
        Input.encodeList<GetKeyMultiRegionConfiguration, Map<String, dynamic>>(
            multiRegionConfigurations, (value) => value.toMap());
    map['origin'] = origin;
    map['pendingDeletionWindowInDays'] = pendingDeletionWindowInDays;
    map['region'] = region;
    map['validTo'] = validTo;
    map['xksKeyConfigurations'] =
        Input.encodeList<GetKeyXksKeyConfiguration, Map<String, dynamic>>(
            xksKeyConfigurations, (value) => value.toMap());
    return map;
  }

  factory GetKeyResult2.fromMap(Map<String, dynamic> map) {
    return GetKeyResult2(
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
      grantTokens: map['grantTokens'] == null
          ? null
          : (map['grantTokens'] as List).cast<String>(),
      id: map['id'] as String,
      keyId: map['keyId'] as String,
      keyManager: map['keyManager'] as String,
      keySpec: map['keySpec'] as String,
      keyState: map['keyState'] as String,
      keyUsage: map['keyUsage'] as String,
      multiRegion: map['multiRegion'] as bool,
      multiRegionConfigurations:
          Input.decodeList<GetKeyMultiRegionConfiguration>(
              map['multiRegionConfigurations'],
              (value) => GetKeyMultiRegionConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      origin: map['origin'] as String,
      pendingDeletionWindowInDays: map['pendingDeletionWindowInDays'] as int,
      region: map['region'] as String,
      validTo: map['validTo'] as String,
      xksKeyConfigurations: Input.decodeList<GetKeyXksKeyConfiguration>(
          map['xksKeyConfigurations'],
          (value) => GetKeyXksKeyConfiguration.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
