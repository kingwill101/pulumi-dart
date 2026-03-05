// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_secret_versions_get_secret_versions_args_doc}
/// Arguments for getSecretVersions.
/// {@endtemplate}
/// {@macro pulumi_kms_get_secret_versions_get_secret_versions_args_doc}
class GetSecretVersionsArgs {
  /// Default to false and only output `secret_name`, `version_id`, `version_stages`. Set it to true can output more details.
  final pulumi.Input<bool>? enableDetails;
  /// A list of KMS Secret Version ids.
  final pulumi.Input<List<String>>? ids;
  /// Specifies whether to return deprecated secret versions. Default to `false`.
  final pulumi.Input<String>? includeDeprecated;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the secret.
  final pulumi.Input<String> secretName;
  /// The stage of the secret version.
  final pulumi.Input<String>? versionStage;

  /// Creates a new [GetSecretVersionsArgs].
  /// [enableDetails] Default to false and only output `secret_name`, `version_id`, `version_stages`. Set it to true can output more details.
  /// [ids] A list of KMS Secret Version ids.
  /// [includeDeprecated] Specifies whether to return deprecated secret versions. Default to `false`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [secretName] The name of the secret.
  /// [versionStage] The stage of the secret version.
  GetSecretVersionsArgs({
    this.enableDetails,
    this.ids,
    this.includeDeprecated,
    this.outputFile,
    required this.secretName,
    this.versionStage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'includeDeprecated': ?includeDeprecated,
      'outputFile': ?outputFile,
      'secretName': secretName,
      'versionStage': ?versionStage,
    };
  }

  factory GetSecretVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionsArgs(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretName: pulumi.Input.fromValue(map['secretName'] as String),
      versionStage: (() { final guardedValue = map['versionStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

