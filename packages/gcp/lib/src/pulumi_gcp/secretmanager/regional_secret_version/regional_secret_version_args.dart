// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionalSecretVersion.
class RegionalSecretVersionArgs {
  /// The deletion policy for the regional secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  final Input<String>? deletionPolicy;

  /// The current state of the regional secret version.
  final Input<bool>? enabled;

  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  final Input<bool>? isSecretDataBase64;

  /// Secret Manager regional secret resource.
  final Input<String> secret;

  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final Input<String> secretData;

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
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      isSecretDataBase64:
          Input.asOptionalInput<bool>(map['isSecretDataBase64']),
      secret: Input.asInput<String>(map['secret']),
      secretData: Input.asInput<String>(map['secretData']),
    );
  }
}
