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
  GetKeyVersionsArgs({this.ids, required this.keyId, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'keyId': keyId,
      'outputFile': ?outputFile,
    };
  }

  factory GetKeyVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyVersionsArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
