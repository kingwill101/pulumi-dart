// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_state_response.dart';
import 'validation_details_response.dart';

/// Details of migration substate.
class MigrationSubstateDetailsResponse {
  /// Substate of migration.
  final pulumi.Input<String> currentSubState;
  final pulumi.Input<Map<String, DatabaseMigrationStateResponse>>? dbDetails;
  /// Details for the validation for migration.
  final pulumi.Input<ValidationDetailsResponse>? validationDetails;

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
      'dbDetails': ?pulumi.Input.mapOptionalInputValue<Map<String, DatabaseMigrationStateResponse>, Map<String, Map<String, dynamic>>>(dbDetails, (value) => pulumi.Input.encodeMapValues<DatabaseMigrationStateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationDetails': ?pulumi.Input.mapOptionalInputValue<ValidationDetailsResponse, Map<String, dynamic>>(validationDetails, (value) => value.toMap()),
    };
  }

  factory MigrationSubstateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return MigrationSubstateDetailsResponse(
      currentSubState: (map['currentSubState'] as String).input(),
      dbDetails: map['dbDetails'] == null ? null : (pulumi.Input.decodeMapValues<DatabaseMigrationStateResponse>(map['dbDetails'], (value) => DatabaseMigrationStateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationDetails: map['validationDetails'] == null ? null : (ValidationDetailsResponse.fromMap((map['validationDetails'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

