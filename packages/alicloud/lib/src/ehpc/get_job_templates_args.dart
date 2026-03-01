// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ehpc_get_job_templates_get_job_templates_args_doc}
/// Arguments for getJobTemplates.
/// {@endtemplate}
/// {@macro pulumi_ehpc_get_job_templates_get_job_templates_args_doc}
class GetJobTemplatesArgs {
  /// A list of Job Template IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetJobTemplatesArgs].
  /// [ids] A list of Job Template IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetJobTemplatesArgs({
    List<String>? ids,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetJobTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetJobTemplatesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

