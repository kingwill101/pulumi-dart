// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_substate_details_response.dart';

/// State of migration.
class MigrationStatusResponse {
  /// Current migration sub state details.
  final pulumi.Input<MigrationSubstateDetailsResponse> currentSubStateDetails;
  /// Error message, if any, for the migration state.
  final pulumi.Input<String> error;
  /// State of migration.
  final pulumi.Input<String> state;

  /// Creates a new [MigrationStatusResponse].
  /// [currentSubStateDetails] Current migration sub state details.
  /// [error] Error message, if any, for the migration state.
  /// [state] State of migration.
  const MigrationStatusResponse({
    required this.currentSubStateDetails,
    required this.error,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentSubStateDetails': pulumi.Input.mapInputValue<MigrationSubstateDetailsResponse, Map<String, dynamic>>(currentSubStateDetails, (value) => value.toMap()),
      'error': error,
      'state': state,
    };
  }

  factory MigrationStatusResponse.fromMap(Map<String, dynamic> map) {
    return MigrationStatusResponse(
      currentSubStateDetails: pulumi.Input.fromValue(MigrationSubstateDetailsResponse.fromMap((map['currentSubStateDetails']! as Map).cast<String, dynamic>())),
      error: pulumi.Input.fromValue(map['error'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

