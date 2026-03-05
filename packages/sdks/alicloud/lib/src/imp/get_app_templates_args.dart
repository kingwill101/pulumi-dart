// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_imp_get_app_templates_get_app_templates_args_doc}
/// Arguments for getAppTemplates.
/// {@endtemplate}
/// {@macro pulumi_imp_get_app_templates_get_app_templates_args_doc}
class GetAppTemplatesArgs {
  /// A list of App Template IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by App Template name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Application template usage status. Valid values: ["attached", "unattached"].
  final pulumi.Input<String>? status;

  /// Creates a new [GetAppTemplatesArgs].
  /// [ids] A list of App Template IDs.
  /// [nameRegex] A regex string to filter results by App Template name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Application template usage status. Valid values: ["attached", "unattached"].
  GetAppTemplatesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetAppTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetAppTemplatesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

