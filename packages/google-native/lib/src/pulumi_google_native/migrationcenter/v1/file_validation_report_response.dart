// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_error_response.dart';
import 'import_row_error_response.dart';

/// A resource that aggregates the validation errors found in an import job file.
class FileValidationReportResponse {
  /// List of file level errors.
  final List<ImportErrorResponse> fileErrors;

  /// The name of the file.
  final String fileName;

  /// Flag indicating that processing was aborted due to maximum number of errors.
  final bool partialReport;

  /// Partial list of rows that encountered validation error.
  final List<ImportRowErrorResponse> rowErrors;

  FileValidationReportResponse({
    required this.fileErrors,
    required this.fileName,
    required this.partialReport,
    required this.rowErrors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileErrors'] =
        pulumi.Input.encodeList<ImportErrorResponse, Map<String, dynamic>>(
            fileErrors, (value) => value.toMap());
    map['fileName'] = fileName;
    map['partialReport'] = partialReport;
    map['rowErrors'] =
        pulumi.Input.encodeList<ImportRowErrorResponse, Map<String, dynamic>>(
            rowErrors, (value) => value.toMap());
    return map;
  }

  factory FileValidationReportResponse.fromMap(Map<String, dynamic> map) {
    return FileValidationReportResponse(
      fileErrors: pulumi.Input.decodeList<ImportErrorResponse>(
          map['fileErrors'],
          (value) => ImportErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      fileName: map['fileName'] as String,
      partialReport: map['partialReport'] as bool,
      rowErrors: pulumi.Input.decodeList<ImportRowErrorResponse>(
          map['rowErrors'],
          (value) => ImportRowErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
