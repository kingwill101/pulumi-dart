// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRegionalSecretVersion.
class GetRegionalSecretVersionArgs {
  /// If set to 'true', the secret data is
  /// expected to be base64-encoded string.
  final Input<bool>? isSecretDataBase64;

  /// Location of Secret Manager regional secret resource.
  /// It must be provided when the <span pulumi-lang-nodejs="`secret`" pulumi-lang-dotnet="`Secret`" pulumi-lang-go="`secret`" pulumi-lang-python="`secret`" pulumi-lang-yaml="`secret`" pulumi-lang-java="`secret`">`secret`</span> field provided consists of only the name of the regional secret.
  final Input<String>? location;

  /// The project to get the secret version for. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The regional secret to get the secret version for.
  /// This can be either the reference of the regional secret as in `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}` or only the name of the regional secret as in `{{secret_id}}`. If only the name of the regional secret is provided, the location must also be provided.
  final Input<String> secret;

  /// The version of the regional secret to get. If it
  /// is not provided, the latest version is retrieved.
  final Input<String>? version;

  GetRegionalSecretVersionArgs({
    this.isSecretDataBase64,
    this.location,
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
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

  factory GetRegionalSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionArgs(
      isSecretDataBase64:
          Input.asOptionalInput<bool>(map['isSecretDataBase64']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      secret: Input.asInput<String>(map['secret']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
