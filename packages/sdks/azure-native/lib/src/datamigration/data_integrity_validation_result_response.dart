// ignore_for_file: unused_element, unnecessary_cast

import 'validation_error_response.dart';

/// Results for checksum based Data Integrity validation results
class DataIntegrityValidationResultResponse {
  /// List of failed table names of source and target pair
  final Map<String, String>? failedObjects;
  /// List of errors that happened while performing data integrity validation
  final ValidationErrorResponse? validationErrors;

  /// Creates a new [DataIntegrityValidationResultResponse].
  /// [failedObjects] List of failed table names of source and target pair
  /// [validationErrors] List of errors that happened while performing data integrity validation
  DataIntegrityValidationResultResponse({
    this.failedObjects,
    this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failedObjects': ?failedObjects,
      'validationErrors': ?validationErrors == null ? null : validationErrors!.toMap(),
    };
  }

  factory DataIntegrityValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return DataIntegrityValidationResultResponse(
      failedObjects: map['failedObjects'] == null ? null : (map['failedObjects'] as Map).cast<String, String>(),
      validationErrors: map['validationErrors'] == null ? null : ValidationErrorResponse.fromMap((map['validationErrors'] as Map).cast<String, dynamic>()),
    );
  }
}

