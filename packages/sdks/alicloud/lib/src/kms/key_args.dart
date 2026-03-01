// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_key_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_kms_key_key_args_doc}
class KeyArgs {
  /// Specifies whether to enable automatic key rotation. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? automaticRotation;
  /// Specifies whether to enable deletion protection. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`.
  final pulumi.Input<String>? deletionProtection;
  /// The description of deletion protection. **NOTE:** `deletion_protection_description` takes effect only if `deletion_protection` is set to `Enabled`.
  final pulumi.Input<String>? deletionProtectionDescription;
  /// Field `deletion_window_in_days` has been deprecated from provider version 1.85.0. New field `pending_window_in_days` instead.
  final pulumi.Input<int>? deletionWindowInDays;
  /// The description of the key.
  final pulumi.Input<String>? description;
  /// The ID of the KMS instance.
  final pulumi.Input<String>? dkmsInstanceId;
  /// Field `is_enabled` has been deprecated from provider version 1.85.0. New field `status` instead.
  ///
  /// > **NOTE:** If you set the origin parameter to EXTERNAL or the key_spec parameter to an asymmetric CMK type, automatic key rotation is unavailable.
  ///
  /// > **NOTE:** The default type of the CMK is `Aliyun_AES_256`. Only Dedicated KMS supports `Aliyun_AES_128` and `Aliyun_AES_192`.
  ///
  /// > **NOTE:** When the pre-deletion days elapses, the key is permanently deleted and cannot be recovered.
  final pulumi.Input<bool>? isEnabled;
  /// The specification of the key. Default value: `Aliyun_AES_256`. Valid values: `Aliyun_AES_256`, `Aliyun_AES_128`, `Aliyun_AES_192`, `Aliyun_SM4`, `RSA_2048`, `RSA_3072`, `EC_P256`, `EC_P256K`, `EC_SM2`.
  final pulumi.Input<String>? keySpec;
  /// Field `key_state` has been deprecated from provider version 1.123.1. New field `status` instead.
  final pulumi.Input<String>? keyState;
  /// The usage of the key. Default value: `ENCRYPT/DECRYPT`. Valid values:
  /// - `ENCRYPT/DECRYPT`: Encrypts or decrypts data.
  /// - `SIGN/VERIFY`: Generates or verifies a digital signature.
  final pulumi.Input<String>? keyUsage;
  /// The key material origin. Default value: `Aliyun_KMS`. Valid values: `Aliyun_KMS`, `EXTERNAL`.
  final pulumi.Input<String>? origin;
  /// The number of days before the CMK is deleted. During this period, the CMK is in the PendingDeletion state. After this period ends, you cannot cancel the deletion. Unit: days. Valid values: `7` to `366`. **NOTE:** From version 1.184.0, `pending_window_in_days` can be set to `366`.
  final pulumi.Input<int>? pendingWindowInDays;
  /// The content of the key policy. The value is in the JSON format. The value can be up to 32,768 bytes in length. For more information, see [How to use it](https://www.alibabacloud.com/help/en/kms/developer-reference/api-setkeypolicy).
  final pulumi.Input<String>? policy;
  /// The protection level of the key. Default value: `SOFTWARE`. Valid values: `SOFTWARE`, `HSM`.
  final pulumi.Input<String>? protectionLevel;
  /// The period of automatic key rotation. The following units are supported: d (day), h (hour), m (minute), and s (second). For example, you can use either 7d or 604800s to specify a seven-day interval. **NOTE**: If `automatic_rotation` is set to `Enabled`, `rotation_interval` is required.
  final pulumi.Input<String>? rotationInterval;
  /// The status of key. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`, `PendingDeletion`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KeyArgs].
  /// [automaticRotation] Specifies whether to enable automatic key rotation. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`.
  /// [deletionProtection] Specifies whether to enable deletion protection. Default value: `Disabled`. Valid values: `Enabled`, `Disabled`.
  /// [deletionProtectionDescription] The description of deletion protection. **NOTE:** `deletion_protection_description` takes effect only if `deletion_protection` is set to `Enabled`.
  /// [deletionWindowInDays] Field `deletion_window_in_days` has been deprecated from provider version 1.85.0. New field `pending_window_in_days` instead.
  /// [description] The description of the key.
  /// [dkmsInstanceId] The ID of the KMS instance.
  /// [isEnabled] Field `is_enabled` has been deprecated from provider version 1.85.0. New field `status` instead.
  /// [keySpec] The specification of the key. Default value: `Aliyun_AES_256`. Valid values: `Aliyun_AES_256`, `Aliyun_AES_128`, `Aliyun_AES_192`, `Aliyun_SM4`, `RSA_2048`, `RSA_3072`, `EC_P256`, `EC_P256K`, `EC_SM2`.
  /// [keyState] Field `key_state` has been deprecated from provider version 1.123.1. New field `status` instead.
  /// [keyUsage] The usage of the key. Default value: `ENCRYPT/DECRYPT`. Valid values:
  /// [origin] The key material origin. Default value: `Aliyun_KMS`. Valid values: `Aliyun_KMS`, `EXTERNAL`.
  /// [pendingWindowInDays] The number of days before the CMK is deleted. During this period, the CMK is in the PendingDeletion state. After this period ends, you cannot cancel the deletion. Unit: days. Valid values: `7` to `366`. **NOTE:** From version 1.184.0, `pending_window_in_days` can be set to `366`.
  /// [policy] The content of the key policy. The value is in the JSON format. The value can be up to 32,768 bytes in length. For more information, see [How to use it](https://www.alibabacloud.com/help/en/kms/developer-reference/api-setkeypolicy).
  /// [protectionLevel] The protection level of the key. Default value: `SOFTWARE`. Valid values: `SOFTWARE`, `HSM`.
  /// [rotationInterval] The period of automatic key rotation. The following units are supported: d (day), h (hour), m (minute), and s (second). For example, you can use either 7d or 604800s to specify a seven-day interval. **NOTE**: If `automatic_rotation` is set to `Enabled`, `rotation_interval` is required.
  /// [status] The status of key. Default value: `Enabled`. Valid values: `Enabled`, `Disabled`, `PendingDeletion`.
  /// [tags] A mapping of tags to assign to the resource.
  KeyArgs({
    pulumi.Output<String>? automaticRotation,
    pulumi.Output<String>? deletionProtection,
    pulumi.Output<String>? deletionProtectionDescription,
    pulumi.Output<int>? deletionWindowInDays,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dkmsInstanceId,
    pulumi.Output<bool>? isEnabled,
    pulumi.Output<String>? keySpec,
    pulumi.Output<String>? keyState,
    pulumi.Output<String>? keyUsage,
    pulumi.Output<String>? origin,
    pulumi.Output<int>? pendingWindowInDays,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? protectionLevel,
    pulumi.Output<String>? rotationInterval,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automaticRotation = pulumi.Input.asOptionalInput<String>(automaticRotation),
      deletionProtection = pulumi.Input.asOptionalInput<String>(deletionProtection),
      deletionProtectionDescription = pulumi.Input.asOptionalInput<String>(deletionProtectionDescription),
      deletionWindowInDays = pulumi.Input.asOptionalInput<int>(deletionWindowInDays),
      description = pulumi.Input.asOptionalInput<String>(description),
      dkmsInstanceId = pulumi.Input.asOptionalInput<String>(dkmsInstanceId),
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      keySpec = pulumi.Input.asOptionalInput<String>(keySpec),
      keyState = pulumi.Input.asOptionalInput<String>(keyState),
      keyUsage = pulumi.Input.asOptionalInput<String>(keyUsage),
      origin = pulumi.Input.asOptionalInput<String>(origin),
      pendingWindowInDays = pulumi.Input.asOptionalInput<int>(pendingWindowInDays),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      protectionLevel = pulumi.Input.asOptionalInput<String>(protectionLevel),
      rotationInterval = pulumi.Input.asOptionalInput<String>(rotationInterval),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticRotation': ?automaticRotation,
      'deletionProtection': ?deletionProtection,
      'deletionProtectionDescription': ?deletionProtectionDescription,
      'deletionWindowInDays': ?deletionWindowInDays,
      'description': ?description,
      'dkmsInstanceId': ?dkmsInstanceId,
      'isEnabled': ?isEnabled,
      'keySpec': ?keySpec,
      'keyState': ?keyState,
      'keyUsage': ?keyUsage,
      'origin': ?origin,
      'pendingWindowInDays': ?pendingWindowInDays,
      'policy': ?policy,
      'protectionLevel': ?protectionLevel,
      'rotationInterval': ?rotationInterval,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      automaticRotation: map['automaticRotation'] == null ? null : pulumi.Output.create<String>(map['automaticRotation'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<String>(map['deletionProtection'] as String),
      deletionProtectionDescription: map['deletionProtectionDescription'] == null ? null : pulumi.Output.create<String>(map['deletionProtectionDescription'] as String),
      deletionWindowInDays: map['deletionWindowInDays'] == null ? null : pulumi.Output.create<int>(map['deletionWindowInDays'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dkmsInstanceId: map['dkmsInstanceId'] == null ? null : pulumi.Output.create<String>(map['dkmsInstanceId'] as String),
      isEnabled: map['isEnabled'] == null ? null : pulumi.Output.create<bool>(map['isEnabled'] as bool),
      keySpec: map['keySpec'] == null ? null : pulumi.Output.create<String>(map['keySpec'] as String),
      keyState: map['keyState'] == null ? null : pulumi.Output.create<String>(map['keyState'] as String),
      keyUsage: map['keyUsage'] == null ? null : pulumi.Output.create<String>(map['keyUsage'] as String),
      origin: map['origin'] == null ? null : pulumi.Output.create<String>(map['origin'] as String),
      pendingWindowInDays: map['pendingWindowInDays'] == null ? null : pulumi.Output.create<int>(map['pendingWindowInDays'] as int),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      protectionLevel: map['protectionLevel'] == null ? null : pulumi.Output.create<String>(map['protectionLevel'] as String),
      rotationInterval: map['rotationInterval'] == null ? null : pulumi.Output.create<String>(map['rotationInterval'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

