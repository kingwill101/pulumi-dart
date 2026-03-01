// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_secret_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_kms_secret_secret_args_doc}
class SecretArgs {
  /// The description of the secret.
  final pulumi.Input<String>? description;
  /// The ID of the KMS instance.
  final pulumi.Input<String>? dkmsInstanceId;
  /// Specifies whether to enable automatic rotation. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enableAutomaticRotation;
  /// The ID of the KMS key.
  final pulumi.Input<String>? encryptionKeyId;
  /// The extended configuration of the secret. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  final pulumi.Input<String>? extendedConfig;
  /// Specifies whether to immediately delete a secret. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? forceDeleteWithoutRecovery;
  /// The content of the secret policy. The value is in the JSON format. The value can be up to 32,768 bytes in length. For more information, see [How to use it](https://www.alibabacloud.com/help/en/kms/developer-reference/api-setsecretpolicy).
  final pulumi.Input<String>? policy;
  /// Specifies the recovery period of the secret if you do not forcibly delete it. Unit: Days. Default value: `30`. Valid values: `7` to `30`. **NOTE:**  If `force_delete_without_recovery` is set to `true`, `recovery_window_in_days` will be ignored.
  final pulumi.Input<int>? recoveryWindowInDays;
  /// The interval for automatic rotation. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  final pulumi.Input<String>? rotationInterval;
  /// The data of the secret. **NOTE:** From version 1.204.1, `secret_data` updating diff will be ignored when `secret_type` is not `Generic`.
  final pulumi.Input<String> secretData;
  /// The type of the secret value. Default value: `text`. Valid values: `text`, `binary`.
  final pulumi.Input<String>? secretDataType;
  /// The name of the secret. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  final pulumi.Input<String> secretName;
  /// The type of the secret. Valid values:
  /// - `Generic`: Generic secret.
  /// - `Rds`: ApsaraDB RDS secret.
  /// - `Redis`: (Available since v1.253.0) ApsaraDB for Redis secret.
  /// - `RAMCredentials`: RAM secret.
  /// - `ECS`: ECS secret.
  /// - `PolarDB`: (Available since v1.253.0) PolarDB secret.
  final pulumi.Input<String>? secretType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The version number of the initial version.
  final pulumi.Input<String> versionId;
  /// The stage label that is used to mark the new version.
  final pulumi.Input<List<String>>? versionStages;

  /// Creates a new [SecretArgs].
  /// [description] The description of the secret.
  /// [dkmsInstanceId] The ID of the KMS instance.
  /// [enableAutomaticRotation] Specifies whether to enable automatic rotation. Default value: `false`. Valid values: `true`, `false`.
  /// [encryptionKeyId] The ID of the KMS key.
  /// [extendedConfig] The extended configuration of the secret. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  /// [forceDeleteWithoutRecovery] Specifies whether to immediately delete a secret. Default value: `false`. Valid values: `true`, `false`.
  /// [policy] The content of the secret policy. The value is in the JSON format. The value can be up to 32,768 bytes in length. For more information, see [How to use it](https://www.alibabacloud.com/help/en/kms/developer-reference/api-setsecretpolicy).
  /// [recoveryWindowInDays] Specifies the recovery period of the secret if you do not forcibly delete it. Unit: Days. Default value: `30`. Valid values: `7` to `30`. **NOTE:**  If `force_delete_without_recovery` is set to `true`, `recovery_window_in_days` will be ignored.
  /// [rotationInterval] The interval for automatic rotation. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  /// [secretData] The data of the secret. **NOTE:** From version 1.204.1, `secret_data` updating diff will be ignored when `secret_type` is not `Generic`.
  /// [secretDataType] The type of the secret value. Default value: `text`. Valid values: `text`, `binary`.
  /// [secretName] The name of the secret. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  /// [secretType] The type of the secret. Valid values:
  /// [tags] A mapping of tags to assign to the resource.
  /// [versionId] The version number of the initial version.
  /// [versionStages] The stage label that is used to mark the new version.
  SecretArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? dkmsInstanceId,
    pulumi.Output<bool>? enableAutomaticRotation,
    pulumi.Output<String>? encryptionKeyId,
    pulumi.Output<String>? extendedConfig,
    pulumi.Output<bool>? forceDeleteWithoutRecovery,
    pulumi.Output<String>? policy,
    pulumi.Output<int>? recoveryWindowInDays,
    pulumi.Output<String>? rotationInterval,
    required pulumi.Output<String> secretData,
    pulumi.Output<String>? secretDataType,
    required pulumi.Output<String> secretName,
    pulumi.Output<String>? secretType,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> versionId,
    pulumi.Output<List<String>>? versionStages,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dkmsInstanceId = pulumi.Input.asOptionalInput<String>(dkmsInstanceId),
      enableAutomaticRotation = pulumi.Input.asOptionalInput<bool>(enableAutomaticRotation),
      encryptionKeyId = pulumi.Input.asOptionalInput<String>(encryptionKeyId),
      extendedConfig = pulumi.Input.asOptionalInput<String>(extendedConfig),
      forceDeleteWithoutRecovery = pulumi.Input.asOptionalInput<bool>(forceDeleteWithoutRecovery),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      recoveryWindowInDays = pulumi.Input.asOptionalInput<int>(recoveryWindowInDays),
      rotationInterval = pulumi.Input.asOptionalInput<String>(rotationInterval),
      secretData = pulumi.Input.asInput<String>(secretData),
      secretDataType = pulumi.Input.asOptionalInput<String>(secretDataType),
      secretName = pulumi.Input.asInput<String>(secretName),
      secretType = pulumi.Input.asOptionalInput<String>(secretType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      versionId = pulumi.Input.asInput<String>(versionId),
      versionStages = pulumi.Input.asOptionalInput<List<String>>(versionStages);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dkmsInstanceId': ?dkmsInstanceId,
      'enableAutomaticRotation': ?enableAutomaticRotation,
      'encryptionKeyId': ?encryptionKeyId,
      'extendedConfig': ?extendedConfig,
      'forceDeleteWithoutRecovery': ?forceDeleteWithoutRecovery,
      'policy': ?policy,
      'recoveryWindowInDays': ?recoveryWindowInDays,
      'rotationInterval': ?rotationInterval,
      'secretData': secretData,
      'secretDataType': ?secretDataType,
      'secretName': secretName,
      'secretType': ?secretType,
      'tags': ?tags,
      'versionId': versionId,
      'versionStages': ?versionStages,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dkmsInstanceId: map['dkmsInstanceId'] == null ? null : pulumi.Output.create<String>(map['dkmsInstanceId'] as String),
      enableAutomaticRotation: map['enableAutomaticRotation'] == null ? null : pulumi.Output.create<bool>(map['enableAutomaticRotation'] as bool),
      encryptionKeyId: map['encryptionKeyId'] == null ? null : pulumi.Output.create<String>(map['encryptionKeyId'] as String),
      extendedConfig: map['extendedConfig'] == null ? null : pulumi.Output.create<String>(map['extendedConfig'] as String),
      forceDeleteWithoutRecovery: map['forceDeleteWithoutRecovery'] == null ? null : pulumi.Output.create<bool>(map['forceDeleteWithoutRecovery'] as bool),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      recoveryWindowInDays: map['recoveryWindowInDays'] == null ? null : pulumi.Output.create<int>(map['recoveryWindowInDays'] as int),
      rotationInterval: map['rotationInterval'] == null ? null : pulumi.Output.create<String>(map['rotationInterval'] as String),
      secretData: pulumi.Output.create<String>(map['secretData'] as String),
      secretDataType: map['secretDataType'] == null ? null : pulumi.Output.create<String>(map['secretDataType'] as String),
      secretName: pulumi.Output.create<String>(map['secretName'] as String),
      secretType: map['secretType'] == null ? null : pulumi.Output.create<String>(map['secretType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
      versionStages: map['versionStages'] == null ? null : pulumi.Output.create<List<String>>((map['versionStages'] as List).cast<String>()),
    );
  }
}

