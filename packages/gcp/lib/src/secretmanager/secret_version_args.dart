// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_secret_version_secret_version_args_doc}
/// The set of arguments for SecretVersion.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_secret_version_secret_version_args_doc}
class SecretVersionArgs {
  /// The deletion policy for the secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;

  /// The current state of the SecretVersion.
  final pulumi.Input<bool>? enabled;

  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  final pulumi.Input<bool>? isSecretDataBase64;

  /// The ID of the project in which the resource belongs. If it is not provided,
  /// the provider project is used
  final pulumi.Input<String>? project;

  /// Secret Manager secret resource
  final pulumi.Input<String> secret;

  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? secretData;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The secret data. Must be no larger than 64KiB. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// > **Note:** One of `secret_data` or `secret_data_wo` can only be set.
  final pulumi.Input<String>? secretDataWo;

  /// Triggers update of secret data write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  final pulumi.Input<int>? secretDataWoVersion;

  /// Creates a new [SecretVersionArgs].
  /// [deletionPolicy] The deletion policy for the secret version. Setting `ABANDON` allows the resource
  /// [enabled] The current state of the SecretVersion.
  /// [isSecretDataBase64] If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  /// [project] The ID of the project in which the resource belongs. If it is not provided,
  /// [secret] Secret Manager secret resource
  /// [secretData] The secret data. Must be no larger than 64KiB.
  /// [secretDataWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [secretDataWoVersion] Triggers update of secret data write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  SecretVersionArgs({
    String? deletionPolicy,
    bool? enabled,
    bool? isSecretDataBase64,
    String? project,
    required String secret,
    String? secretData,
    String? secretDataWo,
    int? secretDataWoVersion,
  })  : deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
        enabled = pulumi.Input.asOptionalInput<bool>(enabled),
        isSecretDataBase64 =
            pulumi.Input.asOptionalInput<bool>(isSecretDataBase64),
        project = pulumi.Input.asOptionalInput<String>(project),
        secret = pulumi.Input.asInput<String>(secret),
        secretData = pulumi.Input.asOptionalInput<String>(secretData),
        secretDataWo = pulumi.Input.asOptionalInput<String>(secretDataWo),
        secretDataWoVersion =
            pulumi.Input.asOptionalInput<int>(secretDataWoVersion);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final isSecretDataBase64Value = isSecretDataBase64;
    if (isSecretDataBase64Value != null) {
      map['isSecretDataBase64'] = isSecretDataBase64Value;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['secret'] = secret;
    final secretDataValue = secretData;
    if (secretDataValue != null) {
      map['secretData'] = secretDataValue;
    }
    final secretDataWoValue = secretDataWo;
    if (secretDataWoValue != null) {
      map['secretDataWo'] = secretDataWoValue;
    }
    final secretDataWoVersionValue = secretDataWoVersion;
    if (secretDataWoVersionValue != null) {
      map['secretDataWoVersion'] = secretDataWoVersionValue;
    }
    return map;
  }

  factory SecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return SecretVersionArgs(
      deletionPolicy: map['deletionPolicy'] == null
          ? null
          : map['deletionPolicy'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      isSecretDataBase64: map['isSecretDataBase64'] == null
          ? null
          : map['isSecretDataBase64'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      secret: map['secret'] as String,
      secretData:
          map['secretData'] == null ? null : map['secretData'] as String,
      secretDataWo:
          map['secretDataWo'] == null ? null : map['secretDataWo'] as String,
      secretDataWoVersion: map['secretDataWoVersion'] == null
          ? null
          : map['secretDataWoVersion'] as int,
    );
  }
}
