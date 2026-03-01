// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_level_validation_status_response.dart';
import 'validation_summary_item_response.dart';

/// Details for the validation for migration.
class ValidationDetailsResponse {
  /// Details of server level validations.
  final List<DbLevelValidationStatusResponse>? dbLevelValidationDetails;
  /// Details of server level validations.
  final List<ValidationSummaryItemResponse>? serverLevelValidationDetails;
  /// Validation status for migration.
  final String? status;
  /// End time (UTC) for validation.
  final String? validationEndTimeInUtc;
  /// Start time (UTC) for validation.
  final String? validationStartTimeInUtc;

  /// Creates a new [ValidationDetailsResponse].
  /// [dbLevelValidationDetails] Details of server level validations.
  /// [serverLevelValidationDetails] Details of server level validations.
  /// [status] Validation status for migration.
  /// [validationEndTimeInUtc] End time (UTC) for validation.
  /// [validationStartTimeInUtc] Start time (UTC) for validation.
  ValidationDetailsResponse({
    this.dbLevelValidationDetails,
    this.serverLevelValidationDetails,
    this.status,
    this.validationEndTimeInUtc,
    this.validationStartTimeInUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbLevelValidationDetails': ?dbLevelValidationDetails == null ? null : pulumi.Input.encodeList<DbLevelValidationStatusResponse, Map<String, dynamic>>(dbLevelValidationDetails!, (value) => value.toMap()),
      'serverLevelValidationDetails': ?serverLevelValidationDetails == null ? null : pulumi.Input.encodeList<ValidationSummaryItemResponse, Map<String, dynamic>>(serverLevelValidationDetails!, (value) => value.toMap()),
      'status': ?status,
      'validationEndTimeInUtc': ?validationEndTimeInUtc,
      'validationStartTimeInUtc': ?validationStartTimeInUtc,
    };
  }

  factory ValidationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ValidationDetailsResponse(
      dbLevelValidationDetails: map['dbLevelValidationDetails'] == null ? null : pulumi.Input.decodeList<DbLevelValidationStatusResponse>(map['dbLevelValidationDetails'], (value) => DbLevelValidationStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      serverLevelValidationDetails: map['serverLevelValidationDetails'] == null ? null : pulumi.Input.decodeList<ValidationSummaryItemResponse>(map['serverLevelValidationDetails'], (value) => ValidationSummaryItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
      validationEndTimeInUtc: map['validationEndTimeInUtc'] == null ? null : map['validationEndTimeInUtc'] as String,
      validationStartTimeInUtc: map['validationStartTimeInUtc'] == null ? null : map['validationStartTimeInUtc'] as String,
    );
  }
}

