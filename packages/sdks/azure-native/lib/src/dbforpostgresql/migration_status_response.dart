// ignore_for_file: unused_element, unnecessary_cast

import 'migration_substate_details_response.dart';

/// State of migration.
class MigrationStatusResponse {
  /// Current migration sub state details.
  final MigrationSubstateDetailsResponse currentSubStateDetails;
  /// Error message, if any, for the migration state.
  final String error;
  /// State of migration.
  final String state;

  /// Creates a new [MigrationStatusResponse].
  /// [currentSubStateDetails] Current migration sub state details.
  /// [error] Error message, if any, for the migration state.
  /// [state] State of migration.
  MigrationStatusResponse({
    required this.currentSubStateDetails,
    required this.error,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSubStateDetails': currentSubStateDetails.toMap(),
      'error': error,
      'state': state,
    };
  }

  factory MigrationStatusResponse.fromMap(Map<String, dynamic> map) {
    return MigrationStatusResponse(
      currentSubStateDetails: MigrationSubstateDetailsResponse.fromMap((map['currentSubStateDetails'] as Map).cast<String, dynamic>()),
      error: map['error'] as String,
      state: map['state'] as String,
    );
  }
}

