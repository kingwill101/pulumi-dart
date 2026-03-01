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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

