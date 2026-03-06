// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_level_validation_status_response.dart';
import 'validation_summary_item_response.dart';

/// Details for the validation for migration.
class ValidationDetailsResponse {
  /// Details of server level validations.
  final pulumi.Input<List<DbLevelValidationStatusResponse>>? dbLevelValidationDetails;
  /// Details of server level validations.
  final pulumi.Input<List<ValidationSummaryItemResponse>>? serverLevelValidationDetails;
  /// Validation status for migration.
  final pulumi.Input<String>? status;
  /// End time (UTC) for validation.
  final pulumi.Input<String>? validationEndTimeInUtc;
  /// Start time (UTC) for validation.
  final pulumi.Input<String>? validationStartTimeInUtc;

  /// Creates a new [ValidationDetailsResponse].
  /// [dbLevelValidationDetails] Details of server level validations.
  /// [serverLevelValidationDetails] Details of server level validations.
  /// [status] Validation status for migration.
  /// [validationEndTimeInUtc] End time (UTC) for validation.
  /// [validationStartTimeInUtc] Start time (UTC) for validation.
  const ValidationDetailsResponse({
    this.dbLevelValidationDetails,
    this.serverLevelValidationDetails,
    this.status,
    this.validationEndTimeInUtc,
    this.validationStartTimeInUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbLevelValidationDetails': ?pulumi.Input.mapOptionalInputValue<List<DbLevelValidationStatusResponse>, List<Map<String, dynamic>>>(dbLevelValidationDetails, (value) => pulumi.Input.encodeList<DbLevelValidationStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serverLevelValidationDetails': ?pulumi.Input.mapOptionalInputValue<List<ValidationSummaryItemResponse>, List<Map<String, dynamic>>>(serverLevelValidationDetails, (value) => pulumi.Input.encodeList<ValidationSummaryItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'validationEndTimeInUtc': ?validationEndTimeInUtc,
      'validationStartTimeInUtc': ?validationStartTimeInUtc,
    };
  }

  factory ValidationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ValidationDetailsResponse(
      dbLevelValidationDetails: (() { final guardedValue = map['dbLevelValidationDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbLevelValidationStatusResponse>(guardedValue, (value) => DbLevelValidationStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serverLevelValidationDetails: (() { final guardedValue = map['serverLevelValidationDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ValidationSummaryItemResponse>(guardedValue, (value) => ValidationSummaryItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationEndTimeInUtc: (() { final guardedValue = map['validationEndTimeInUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validationStartTimeInUtc: (() { final guardedValue = map['validationStartTimeInUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

