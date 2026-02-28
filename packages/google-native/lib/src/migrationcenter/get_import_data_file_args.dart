// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrationcenter_v1_get_import_data_file_args_doc}
/// Arguments for getImportDataFile.
/// {@endtemplate}
/// {@macro pulumi_migrationcenter_v1_get_import_data_file_args_doc}
class GetImportDataFileArgs {
  final pulumi.Input<String> importDataFileId;
  final pulumi.Input<String> importJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetImportDataFileArgs].
  /// [importDataFileId] Required.
  /// [importJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetImportDataFileArgs({
    required String importDataFileId,
    required String importJobId,
    required String location,
    String? project,
  })  : importDataFileId = pulumi.Input.asInput<String>(importDataFileId),
        importJobId = pulumi.Input.asInput<String>(importJobId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['importDataFileId'] = importDataFileId;
    map['importJobId'] = importJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetImportDataFileArgs.fromMap(Map<String, dynamic> map) {
    return GetImportDataFileArgs(
      importDataFileId: map['importDataFileId'] as String,
      importJobId: map['importJobId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
