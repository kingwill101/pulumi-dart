// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretmanager_get_regional_secret_version_get_regional_secret_version_args_doc}
/// Arguments for getRegionalSecretVersion.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_get_regional_secret_version_get_regional_secret_version_args_doc}
class GetRegionalSecretVersionArgs {
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

  /// Creates a new [GetRegionalSecretVersionArgs].
  /// [isSecretDataBase64] If set to 'true', the secret data is
  /// [location] Location of Secret Manager regional secret resource.
  /// [project] The project to get the secret version for. If it
  /// [secret] The regional secret to get the secret version for.
  /// [version] The version of the regional secret to get. If it
  GetRegionalSecretVersionArgs({
    bool? isSecretDataBase64,
    String? location,
    String? project,
    required String secret,
    String? version,
  }) :
      isSecretDataBase64 = pulumi.Input.asOptionalInput<bool>(isSecretDataBase64),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      secret = pulumi.Input.asInput<String>(secret),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSecretDataBase64': ?isSecretDataBase64,
      'location': ?location,
      'project': ?project,
      'secret': secret,
      'version': ?version,
    };
  }

  factory GetRegionalSecretVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionArgs(
      isSecretDataBase64: map['isSecretDataBase64'] == null ? null : map['isSecretDataBase64'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secret: map['secret'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

