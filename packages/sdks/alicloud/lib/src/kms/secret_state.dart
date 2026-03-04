// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Secret resources.
class SecretState {
  /// The ARN of the secret.
  final pulumi.Input<String>? arn;

  /// (Available since v1.224.0) The time when the secret is created.
  final pulumi.Input<String>? createTime;

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

  /// The time when the secret is scheduled to be deleted.
  final pulumi.Input<String>? plannedDeleteTime;

  /// The content of the secret policy. The value is in the JSON format. The value can be up to 32,768 bytes in length. For more information, see [How to use it](https://www.alibabacloud.com/help/en/kms/developer-reference/api-setsecretpolicy).
  final pulumi.Input<String>? policy;

  /// Specifies the recovery period of the secret if you do not forcibly delete it. Unit: Days. Default value: `30`. Valid values: `7` to `30`. **NOTE:**  If `force_delete_without_recovery` is set to `true`, `recovery_window_in_days` will be ignored.
  final pulumi.Input<int>? recoveryWindowInDays;

  /// The interval for automatic rotation. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  final pulumi.Input<String>? rotationInterval;

  /// The data of the secret. **NOTE:** From version 1.204.1, `secret_data` updating diff will be ignored when `secret_type` is not `Generic`.
  final pulumi.Input<String>? secretData;

  /// The type of the secret value. Default value: `text`. Valid values: `text`, `binary`.
  final pulumi.Input<String>? secretDataType;

  /// The name of the secret. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  final pulumi.Input<String>? secretName;

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
  final pulumi.Input<String>? versionId;

  /// The stage label that is used to mark the new version.
  final pulumi.Input<List<String>>? versionStages;

  /// Creates a new [SecretState].
  /// [arn] The ARN of the secret.
  /// [createTime] (Available since v1.224.0) The time when the secret is created.
  /// [description] The description of the secret.
  /// [dkmsInstanceId] The ID of the KMS instance.
  /// [enableAutomaticRotation] Specifies whether to enable automatic rotation. Default value: `false`. Valid values: `true`, `false`.
  /// [encryptionKeyId] The ID of the KMS key.
  /// [extendedConfig] The extended configuration of the secret. For more information, see [How to use it](https://www.alibabacloud.com/help/en/key-management-service/latest/kms-createsecret).
  /// [forceDeleteWithoutRecovery] Specifies whether to immediately delete a secret. Default value: `false`. Valid values: `true`, `false`.
  /// [plannedDeleteTime] The time when the secret is scheduled to be deleted.
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
  SecretState({
    this.arn,
    this.createTime,
    this.description,
    this.dkmsInstanceId,
    this.enableAutomaticRotation,
    this.encryptionKeyId,
    this.extendedConfig,
    this.forceDeleteWithoutRecovery,
    this.plannedDeleteTime,
    this.policy,
    this.recoveryWindowInDays,
    this.rotationInterval,
    this.secretData,
    this.secretDataType,
    this.secretName,
    this.secretType,
    this.tags,
    this.versionId,
    this.versionStages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createTime': ?createTime,
      'description': ?description,
      'dkmsInstanceId': ?dkmsInstanceId,
      'enableAutomaticRotation': ?enableAutomaticRotation,
      'encryptionKeyId': ?encryptionKeyId,
      'extendedConfig': ?extendedConfig,
      'forceDeleteWithoutRecovery': ?forceDeleteWithoutRecovery,
      'plannedDeleteTime': ?plannedDeleteTime,
      'policy': ?policy,
      'recoveryWindowInDays': ?recoveryWindowInDays,
      'rotationInterval': ?rotationInterval,
      'secretData': ?secretData,
      'secretDataType': ?secretDataType,
      'secretName': ?secretName,
      'secretType': ?secretType,
      'tags': ?tags,
      'versionId': ?versionId,
      'versionStages': ?versionStages,
    };
  }

  factory SecretState.fromMap(Map<String, dynamic> map) {
    return SecretState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dkmsInstanceId: (() {
        final guardedValue = map['dkmsInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableAutomaticRotation: (() {
        final guardedValue = map['enableAutomaticRotation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryptionKeyId: (() {
        final guardedValue = map['encryptionKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extendedConfig: (() {
        final guardedValue = map['extendedConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceDeleteWithoutRecovery: (() {
        final guardedValue = map['forceDeleteWithoutRecovery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      plannedDeleteTime: (() {
        final guardedValue = map['plannedDeleteTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryWindowInDays: (() {
        final guardedValue = map['recoveryWindowInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      rotationInterval: (() {
        final guardedValue = map['rotationInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretData: (() {
        final guardedValue = map['secretData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretDataType: (() {
        final guardedValue = map['secretDataType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretName: (() {
        final guardedValue = map['secretName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretType: (() {
        final guardedValue = map['secretType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      versionId: (() {
        final guardedValue = map['versionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versionStages: (() {
        final guardedValue = map['versionStages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
