// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'file_validation_report_response.dart';
import 'import_error_response.dart';

/// A resource that aggregates errors across import job files.
class ValidationReportResponse {
  /// List of errors found in files.
  final List<FileValidationReportResponse> fileValidations;

  /// List of job level errors.
  final List<ImportErrorResponse> jobErrors;

  ValidationReportResponse({
    required this.fileValidations,
    required this.jobErrors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileValidations'] =
        Input.encodeList<FileValidationReportResponse, Map<String, dynamic>>(
            fileValidations, (value) => value.toMap());
    map['jobErrors'] =
        Input.encodeList<ImportErrorResponse, Map<String, dynamic>>(
            jobErrors, (value) => value.toMap());
    return map;
  }

  factory ValidationReportResponse.fromMap(Map<String, dynamic> map) {
    return ValidationReportResponse(
      fileValidations: Input.decodeList<FileValidationReportResponse>(
          map['fileValidations'],
          (value) => FileValidationReportResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      jobErrors: Input.decodeList<ImportErrorResponse>(
          map['jobErrors'],
          (value) => ImportErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
