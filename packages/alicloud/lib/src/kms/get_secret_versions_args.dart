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
    bool? enableDetails,
    List<String>? ids,
    String? includeDeprecated,
    String? outputFile,
    required String secretName,
    String? versionStage,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeDeprecated = pulumi.Input.asOptionalInput<String>(includeDeprecated),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      secretName = pulumi.Input.asInput<String>(secretName),
      versionStage = pulumi.Input.asOptionalInput<String>(versionStage);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      includeDeprecated: map['includeDeprecated'] == null ? null : map['includeDeprecated'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      secretName: map['secretName'] as String,
      versionStage: map['versionStage'] == null ? null : map['versionStage'] as String,
    );
  }
}

