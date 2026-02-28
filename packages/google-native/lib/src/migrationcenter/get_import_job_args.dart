// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_import_job_args_doc}
/// Arguments for getImportJob.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_import_job_args_doc}
class GetImportJobArgs {
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetImportJobArgs].
  /// [importJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetImportJobArgs({
    required String importJobId,
    required String location,
    String? project,
    String? view,
  })  : importJobId = pulumi.Input.asInput<String>(importJobId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['importJobId'] = importJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetImportJobArgs.fromMap(Map<String, dynamic> map) {
    return GetImportJobArgs(
      importJobId: map['importJobId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
