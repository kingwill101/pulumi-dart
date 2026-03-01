// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_state_response.dart';
import 'validation_details_response.dart';

/// Details of migration substate.
class MigrationSubstateDetailsResponse {
  /// Substate of migration.
  final String currentSubState;
  final Map<String, DatabaseMigrationStateResponse>? dbDetails;
  /// Details for the validation for migration.
  final ValidationDetailsResponse? validationDetails;

  /// Creates a new [MigrationSubstateDetailsResponse].
  /// [currentSubState] Substate of migration.
  /// [dbDetails] Optional.
  /// [validationDetails] Details for the validation for migration.
  MigrationSubstateDetailsResponse({
    required this.currentSubState,
    this.dbDetails,
    this.validationDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSubState': currentSubState,
      'dbDetails': ?dbDetails == null ? null : pulumi.Input.encodeMapValues<DatabaseMigrationStateResponse, Map<String, dynamic>>(dbDetails!, (value) => value.toMap()),
      'validationDetails': ?validationDetails == null ? null : validationDetails!.toMap(),
    };
  }

  factory MigrationSubstateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MigrationSubstateDetailsResponse(
      currentSubState: map['currentSubState'] as String,
      dbDetails: map['dbDetails'] == null ? null : pulumi.Input.decodeMapValues<DatabaseMigrationStateResponse>(map['dbDetails'], (value) => DatabaseMigrationStateResponse.fromMap((value as Map).cast<String, dynamic>())),
      validationDetails: map['validationDetails'] == null ? null : ValidationDetailsResponse.fromMap((map['validationDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

