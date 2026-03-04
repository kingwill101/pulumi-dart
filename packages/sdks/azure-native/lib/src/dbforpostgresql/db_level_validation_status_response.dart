// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_summary_item_response.dart';

/// Validation status summary for a database.
class DbLevelValidationStatusResponse {
  /// Name of database.
  final pulumi.Input<String>? databaseName;

  /// End time of a database level validation.
  final pulumi.Input<String>? endedOn;

  /// Start time of a database level validation.
  final pulumi.Input<String>? startedOn;

  /// Summary of database level validations.
  final pulumi.Input<List<ValidationSummaryItemResponse>>? summary;

  /// Creates a new [DbLevelValidationStatusResponse].
  /// [databaseName] Name of database.
  /// [endedOn] End time of a database level validation.
  /// [startedOn] Start time of a database level validation.
  /// [summary] Summary of database level validations.
  DbLevelValidationStatusResponse({
    this.databaseName,
    this.endedOn,
    this.startedOn,
    this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'endedOn': ?endedOn,
      'startedOn': ?startedOn,
      'summary':
          ?pulumi.Input.mapOptionalInputValue<
            List<ValidationSummaryItemResponse>,
            List<Map<String, dynamic>>
          >(
            summary,
            (value) =>
                pulumi.Input.encodeList<
                  ValidationSummaryItemResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DbLevelValidationStatusResponse.fromMap(Map<String, dynamic> map) {
    return DbLevelValidationStatusResponse(
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endedOn: (() {
        final guardedValue = map['endedOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startedOn: (() {
        final guardedValue = map['startedOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      summary: (() {
        final guardedValue = map['summary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ValidationSummaryItemResponse>(
            guardedValue,
            (value) => ValidationSummaryItemResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
