// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RegionalSecretVersion.
class RegionalSecretVersionArgs {
  /// The deletion policy for the regional secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;

  /// The current state of the regional secret version.
  final pulumi.Input<bool>? enabled;

  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  final pulumi.Input<bool>? isSecretDataBase64;

  /// Secret Manager regional secret resource.
  final pulumi.Input<String> secret;

  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> secretData;

  RegionalSecretVersionArgs({
    this.deletionPolicy,
    this.enabled,
    this.isSecretDataBase64,
    required this.secret,
    required this.secretData,
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
    map['secret'] = secret;
    map['secretData'] = secretData;
    return map;
  }

  factory RegionalSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return RegionalSecretVersionArgs(
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      isSecretDataBase64:
          pulumi.Input.asOptionalInput<bool>(map['isSecretDataBase64']),
      secret: pulumi.Input.asInput<String>(map['secret']),
      secretData: pulumi.Input.asInput<String>(map['secretData']),
    );
  }
}
