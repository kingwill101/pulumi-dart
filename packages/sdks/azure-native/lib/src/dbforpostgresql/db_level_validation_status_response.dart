// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_summary_item_response.dart';

/// Validation status summary for a database.
class DbLevelValidationStatusResponse {
  /// Name of database.
  final String? databaseName;
  /// End time of a database level validation.
  final String? endedOn;
  /// Start time of a database level validation.
  final String? startedOn;
  /// Summary of database level validations.
  final List<ValidationSummaryItemResponse>? summary;

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
      'summary': ?summary == null ? null : pulumi.Input.encodeList<ValidationSummaryItemResponse, Map<String, dynamic>>(summary!, (value) => value.toMap()),
    };
  }

  factory DbLevelValidationStatusResponse.fromMap(Map<String, dynamic> map) {
    return DbLevelValidationStatusResponse(
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      endedOn: map['endedOn'] == null ? null : map['endedOn'] as String,
      startedOn: map['startedOn'] == null ? null : map['startedOn'] as String,
      summary: map['summary'] == null ? null : pulumi.Input.decodeList<ValidationSummaryItemResponse>(map['summary'], (value) => ValidationSummaryItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

