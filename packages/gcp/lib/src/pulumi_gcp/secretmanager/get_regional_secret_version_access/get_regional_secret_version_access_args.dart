// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionalSecretVersionAccess.
class GetRegionalSecretVersionAccessArgs {
  /// If set to 'true', the secret data is
  /// expected to be base64-encoded string.
  final pulumi.Input<bool>? isSecretDataBase64;

  /// Location of Secret Manager regional secret resource.
  /// It must be provided when the `secret` field provided consists of only the name of the regional secret.
  final pulumi.Input<String>? location;

  /// The project to get the secret version for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The regional secret to get the secret version for.
  /// This can be either the reference of the regional secret as in `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}` or only the name of the regional secret as in `{{secret_id}}`. If only the name of the regional secret is provided, the location must also be provided.
  final pulumi.Input<String> secret;

  /// The version of the regional secret to get. If it
  /// is not provided, the latest version is retrieved.
  final pulumi.Input<String>? version;

  GetRegionalSecretVersionAccessArgs({
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

  factory GetRegionalSecretVersionAccessArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionAccessArgs(
      isSecretDataBase64:
          pulumi.Input.asOptionalInput<bool>(map['isSecretDataBase64']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secret: pulumi.Input.asInput<String>(map['secret']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
