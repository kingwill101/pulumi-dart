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
  GetFaceConfigsArgs({this.ids, this.nameRegex, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetFaceConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetFaceConfigsArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
