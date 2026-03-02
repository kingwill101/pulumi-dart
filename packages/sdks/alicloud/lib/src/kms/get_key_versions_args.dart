// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_key_versions_get_key_versions_args_doc}
/// Arguments for getKeyVersions.
/// {@endtemplate}
/// {@macro pulumi_kms_get_key_versions_get_key_versions_args_doc}
class GetKeyVersionsArgs {
  /// A list of KMS KeyVersion IDs.
  final pulumi.Input<List<String>>? ids;
  /// The id of kms key.
  final pulumi.Input<String> keyId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetKeyVersionsArgs].
  /// [ids] A list of KMS KeyVersion IDs.
  /// [keyId] The id of kms key.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetKeyVersionsArgs({
    this.ids,
    required this.keyId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyId': keyId,
      'outputFile': ?outputFile,
    };
  }

  factory GetKeyVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyVersionsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      keyId: (map['keyId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

