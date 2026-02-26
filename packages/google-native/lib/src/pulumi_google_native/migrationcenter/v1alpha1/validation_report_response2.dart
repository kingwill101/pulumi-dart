// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'file_validation_report_response2.dart';
import 'import_error_response2.dart';

/// A resource that aggregates errors across import job files.
class ValidationReportResponse2 {
  /// List of errors found in files.
  final List<FileValidationReportResponse2> fileValidations;

  /// List of job level errors.
  final List<ImportErrorResponse2> jobErrors;

  ValidationReportResponse2({
    required this.fileValidations,
    required this.jobErrors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileValidations'] =
        Input.encodeList<FileValidationReportResponse2, Map<String, dynamic>>(
            fileValidations, (value) => value.toMap());
    map['jobErrors'] =
        Input.encodeList<ImportErrorResponse2, Map<String, dynamic>>(
            jobErrors, (value) => value.toMap());
    return map;
  }

  factory ValidationReportResponse2.fromMap(Map<String, dynamic> map) {
    return ValidationReportResponse2(
      fileValidations: Input.decodeList<FileValidationReportResponse2>(
          map['fileValidations'],
          (value) => FileValidationReportResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      jobErrors: Input.decodeList<ImportErrorResponse2>(
          map['jobErrors'],
          (value) => ImportErrorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
