// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_error_response.dart';

/// Results for checksum based Data Integrity validation results
class DataIntegrityValidationResultResponse {
  /// List of failed table names of source and target pair
  final pulumi.Input<Map<String, String>>? failedObjects;
  /// List of errors that happened while performing data integrity validation
  final pulumi.Input<ValidationErrorResponse>? validationErrors;

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
      'validationErrors': ?pulumi.Input.mapOptionalInputValue<ValidationErrorResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory DataIntegrityValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return DataIntegrityValidationResultResponse(
      failedObjects: map['failedObjects'] == null ? null : ((map['failedObjects'] as Map).cast<String, String>()).input(),
      validationErrors: map['validationErrors'] == null ? null : (ValidationErrorResponse.fromMap((map['validationErrors'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

