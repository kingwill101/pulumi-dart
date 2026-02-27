// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'import_error_response2.dart';
import 'import_row_error_response2.dart';

/// A resource that aggregates the validation errors found in an import job file.
class FileValidationReportResponse2 {
  /// List of file level errors.
  final List<ImportErrorResponse2> fileErrors;

  /// The name of the file.
  final String fileName;

  /// Flag indicating that processing was aborted due to maximum number of errors.
  final bool partialReport;

  /// Partial list of rows that encountered validation error.
  final List<ImportRowErrorResponse2> rowErrors;

  FileValidationReportResponse2({
    required this.fileErrors,
    required this.fileName,
    required this.partialReport,
    required this.rowErrors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileErrors'] =
        Input.encodeList<ImportErrorResponse2, Map<String, dynamic>>(
            fileErrors, (value) => value.toMap());
    map['fileName'] = fileName;
    map['partialReport'] = partialReport;
    map['rowErrors'] =
        Input.encodeList<ImportRowErrorResponse2, Map<String, dynamic>>(
            rowErrors, (value) => value.toMap());
    return map;
  }

  factory FileValidationReportResponse2.fromMap(Map<String, dynamic> map) {
    return FileValidationReportResponse2(
      fileErrors: Input.decodeList<ImportErrorResponse2>(
          map['fileErrors'],
          (value) => ImportErrorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      fileName: map['fileName'] as String,
      partialReport: map['partialReport'] as bool,
      rowErrors: Input.decodeList<ImportRowErrorResponse2>(
          map['rowErrors'],
          (value) => ImportRowErrorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
