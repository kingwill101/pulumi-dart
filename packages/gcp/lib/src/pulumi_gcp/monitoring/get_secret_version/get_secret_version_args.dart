// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSecretVersion.
class GetSecretVersionArgs {
  /// If set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, the <span pulumi-lang-nodejs="`secretData`" pulumi-lang-dotnet="`SecretData`" pulumi-lang-go="`secretData`" pulumi-lang-python="`secret_data`" pulumi-lang-yaml="`secretData`" pulumi-lang-java="`secretData`">`secret_data`</span>
  /// will not be fetched. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? fetchSecretData;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the secret data is
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
