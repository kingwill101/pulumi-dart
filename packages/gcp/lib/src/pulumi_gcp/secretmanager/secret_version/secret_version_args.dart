// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SecretVersion.
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

  SecretVersionArgs({
    this.deletionPolicy,
    this.enabled,
    this.isSecretDataBase64,
    this.project,
    required this.secret,
    this.secretData,
    this.secretDataWo,
    this.secretDataWoVersion,
  });

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
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      isSecretDataBase64:
          pulumi.Input.asOptionalInput<bool>(map['isSecretDataBase64']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secret: pulumi.Input.asInput<String>(map['secret']),
      secretData: pulumi.Input.asOptionalInput<String>(map['secretData']),
      secretDataWo: pulumi.Input.asOptionalInput<String>(map['secretDataWo']),
      secretDataWoVersion:
          pulumi.Input.asOptionalInput<int>(map['secretDataWoVersion']),
    );
  }
}
