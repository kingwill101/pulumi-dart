// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSecretVersionAccess.
class GetSecretVersionAccessArgs {
  /// If set to 'true', the secret data is
  /// expected to be base64-encoded string.
  final pulumi.Input<bool>? isSecretDataBase64;

  /// The project to get the secret version for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The secret to get the secret version for.
  final pulumi.Input<String> secret;

  /// The version of the secret to get. If it
  /// is not provided, the latest version is retrieved.
  final pulumi.Input<String>? version;

  GetSecretVersionAccessArgs({
    this.isSecretDataBase64,
    this.project,
    required this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isSecretDataBase64Value = isSecretDataBase64;
    if (isSecretDataBase64Value != null) {
      map['isSecretDataBase64'] = isSecretDataBase64Value;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['secret'] = secret;
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetSecretVersionAccessArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionAccessArgs(
      isSecretDataBase64:
          pulumi.Input.asOptionalInput<bool>(map['isSecretDataBase64']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secret: pulumi.Input.asInput<String>(map['secret']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
