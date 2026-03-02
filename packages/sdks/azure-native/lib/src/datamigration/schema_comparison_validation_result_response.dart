// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_comparison_validation_result_type_response.dart';
import 'validation_error_response.dart';

/// Results for schema comparison between the source and target
class SchemaComparisonValidationResultResponse {
  /// List of schema differences between the source and target databases
  final pulumi.Input<SchemaComparisonValidationResultTypeResponse>? schemaDifferences;
  /// Count of source database objects
  final pulumi.Input<Map<String, double>>? sourceDatabaseObjectCount;
  /// Count of target database objects
  final pulumi.Input<Map<String, double>>? targetDatabaseObjectCount;
  /// List of errors that happened while performing schema compare validation
  final pulumi.Input<ValidationErrorResponse>? validationErrors;

  /// Creates a new [SchemaComparisonValidationResultResponse].
  /// [schemaDifferences] List of schema differences between the source and target databases
  /// [sourceDatabaseObjectCount] Count of source database objects
  /// [targetDatabaseObjectCount] Count of target database objects
  /// [validationErrors] List of errors that happened while performing schema compare validation
  SchemaComparisonValidationResultResponse({
    this.schemaDifferences,
    this.sourceDatabaseObjectCount,
    this.targetDatabaseObjectCount,
    this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaDifferences': ?pulumi.Input.mapOptionalInputValue<SchemaComparisonValidationResultTypeResponse, Map<String, dynamic>>(schemaDifferences, (value) => value.toMap()),
      'sourceDatabaseObjectCount': ?sourceDatabaseObjectCount,
      'targetDatabaseObjectCount': ?targetDatabaseObjectCount,
      'validationErrors': ?pulumi.Input.mapOptionalInputValue<ValidationErrorResponse, Map<String, dynamic>>(validationErrors, (value) => value.toMap()),
    };
  }

  factory SchemaComparisonValidationResultResponse.fromMap(Map<String, dynamic> map) {
    return SchemaComparisonValidationResultResponse(
      schemaDifferences: map['schemaDifferences'] == null ? null : (SchemaComparisonValidationResultTypeResponse.fromMap((map['schemaDifferences']! as Map).cast<String, dynamic>())).input(),
      sourceDatabaseObjectCount: map['sourceDatabaseObjectCount'] == null ? null : ((map['sourceDatabaseObjectCount']! as Map).cast<String, double>()).input(),
      targetDatabaseObjectCount: map['targetDatabaseObjectCount'] == null ? null : ((map['targetDatabaseObjectCount']! as Map).cast<String, double>()).input(),
      validationErrors: map['validationErrors'] == null ? null : (ValidationErrorResponse.fromMap((map['validationErrors']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

