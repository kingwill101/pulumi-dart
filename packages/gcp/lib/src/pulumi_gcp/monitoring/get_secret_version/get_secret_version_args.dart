// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecretVersion.
class GetSecretVersionArgs {
  /// If set to `false`, the `secret_data`
  /// will not be fetched. Default is `true`.
  final Input<bool>? fetchSecretData;

  /// If set to `true`, the secret data is
  /// expected to be base64-encoded string.
  final Input<bool>? isSecretDataBase64;

  /// The project to get the secret version for. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The secret to get the secret version for.
  final Input<String> secret;

  /// The version of the secret to get. If it
  /// is not provided, the latest version is retrieved.
  final Input<String>? version;

  GetSecretVersionArgs({
    this.fetchSecretData,
    this.isSecretDataBase64,
    this.project,
    required this.secret,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fetchSecretDataValue = fetchSecretData;
    if (fetchSecretDataValue != null) {
      map['fetchSecretData'] = fetchSecretDataValue;
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
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionArgs(
      fetchSecretData: Input.asOptionalInput<bool>(map['fetchSecretData']),
      isSecretDataBase64:
          Input.asOptionalInput<bool>(map['isSecretDataBase64']),
      project: Input.asOptionalInput<String>(map['project']),
      secret: Input.asInput<String>(map['secret']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
