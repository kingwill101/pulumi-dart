// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_secret_version_get_secret_version_args_doc}
/// Arguments for getSecretVersion.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_secret_version_get_secret_version_args_doc}
class GetSecretVersionArgs {
  /// If set to `false`, the `secret_data`
  /// will not be fetched. Default is `true`.
  final pulumi.Input<bool>? fetchSecretData;

  /// If set to `true`, the secret data is
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

  /// Creates a new [GetSecretVersionArgs].
  /// [fetchSecretData] If set to `false`, the `secret_data`
  /// [isSecretDataBase64] If set to `true`, the secret data is
  /// [project] The project to get the secret version for. If it
  /// [secret] The secret to get the secret version for.
  /// [version] The version of the secret to get. If it
  GetSecretVersionArgs({
    bool? fetchSecretData,
    bool? isSecretDataBase64,
    String? project,
    required String secret,
    String? version,
  })  : fetchSecretData = pulumi.Input.asOptionalInput<bool>(fetchSecretData),
        isSecretDataBase64 =
            pulumi.Input.asOptionalInput<bool>(isSecretDataBase64),
        project = pulumi.Input.asOptionalInput<String>(project),
        secret = pulumi.Input.asInput<String>(secret),
        version = pulumi.Input.asOptionalInput<String>(version);

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
      fetchSecretData: map['fetchSecretData'] == null
          ? null
          : map['fetchSecretData'] as bool,
      isSecretDataBase64: map['isSecretDataBase64'] == null
          ? null
          : map['isSecretDataBase64'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      secret: map['secret'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
