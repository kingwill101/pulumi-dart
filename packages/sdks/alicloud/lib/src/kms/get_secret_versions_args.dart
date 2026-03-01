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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? includeDeprecated,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> secretName,
    pulumi.Output<String>? versionStage,
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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      includeDeprecated: map['includeDeprecated'] == null ? null : pulumi.Output.create<String>(map['includeDeprecated'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      secretName: pulumi.Output.create<String>(map['secretName'] as String),
      versionStage: map['versionStage'] == null ? null : pulumi.Output.create<String>(map['versionStage'] as String),
    );
  }
}

