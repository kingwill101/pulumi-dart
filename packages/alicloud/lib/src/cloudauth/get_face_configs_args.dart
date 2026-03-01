// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudauth_get_face_configs_get_face_configs_args_doc}
/// Arguments for getFaceConfigs.
/// {@endtemplate}
/// {@macro pulumi_cloudauth_get_face_configs_get_face_configs_args_doc}
class GetFaceConfigsArgs {
  /// A list of Face Config IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by biz_name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetFaceConfigsArgs].
  /// [ids] A list of Face Config IDs.
  /// [nameRegex] A regex string to filter results by biz_name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetFaceConfigsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetFaceConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetFaceConfigsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

