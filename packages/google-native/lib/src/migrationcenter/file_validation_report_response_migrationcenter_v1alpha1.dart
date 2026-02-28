// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_error_response_migrationcenter_v1alpha1.dart';
import 'import_row_error_response_migrationcenter_v1alpha1.dart';

/// A resource that aggregates the validation errors found in an import job file.
class FileValidationReportResponseMigrationcenterV1alpha1 {
  /// List of file level errors.
  final List<ImportErrorResponseMigrationcenterV1alpha1> fileErrors;
  /// The name of the file.
  final String fileName;
  /// Flag indicating that processing was aborted due to maximum number of errors.
  final bool partialReport;
  /// Partial list of rows that encountered validation error.
  final List<ImportRowErrorResponseMigrationcenterV1alpha1> rowErrors;

  /// Creates a new [FileValidationReportResponseMigrationcenterV1alpha1].
  /// [fileErrors] List of file level errors.
  /// [fileName] The name of the file.
  /// [partialReport] Flag indicating that processing was aborted due to maximum number of errors.
  /// [rowErrors] Partial list of rows that encountered validation error.
  FileValidationReportResponseMigrationcenterV1alpha1({
    required this.fileErrors,
    required this.fileName,
    required this.partialReport,
    required this.rowErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileErrors': pulumi.Input.encodeList<ImportErrorResponseMigrationcenterV1alpha1, Map<String, dynamic>>(fileErrors, (value) => value.toMap()),
      'fileName': fileName,
      'partialReport': partialReport,
      'rowErrors': pulumi.Input.encodeList<ImportRowErrorResponseMigrationcenterV1alpha1, Map<String, dynamic>>(rowErrors, (value) => value.toMap()),
    };
  }

  factory FileValidationReportResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return FileValidationReportResponseMigrationcenterV1alpha1(
      fileErrors: pulumi.Input.decodeList<ImportErrorResponseMigrationcenterV1alpha1>(map['fileErrors'], (value) => ImportErrorResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      fileName: map['fileName'] as String,
      partialReport: map['partialReport'] as bool,
      rowErrors: pulumi.Input.decodeList<ImportRowErrorResponseMigrationcenterV1alpha1>(map['rowErrors'], (value) => ImportRowErrorResponseMigrationcenterV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

