// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_progress_details_response.dart';

/// Detailed status of current Sql Db migration.
class SqlDbMigrationStatusDetailsResponse {
  /// Details on progress of ADF copy activities.
  final pulumi.Input<List<CopyProgressDetailsResponse>>
  listOfCopyProgressDetails;

  /// Current State of Migration.
  final pulumi.Input<String> migrationState;

  /// Sql Data Copy errors, if any.
  final pulumi.Input<List<String>> sqlDataCopyErrors;

  /// Creates a new [SqlDbMigrationStatusDetailsResponse].
  /// [listOfCopyProgressDetails] Details on progress of ADF copy activities.
  /// [migrationState] Current State of Migration.
  /// [sqlDataCopyErrors] Sql Data Copy errors, if any.
  SqlDbMigrationStatusDetailsResponse({
    required this.listOfCopyProgressDetails,
    required this.migrationState,
    required this.sqlDataCopyErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listOfCopyProgressDetails':
          pulumi.Input.mapInputValue<
            List<CopyProgressDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            listOfCopyProgressDetails,
            (value) =>
                pulumi.Input.encodeList<
                  CopyProgressDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'migrationState': migrationState,
      'sqlDataCopyErrors': sqlDataCopyErrors,
    };
  }

  factory SqlDbMigrationStatusDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlDbMigrationStatusDetailsResponse(
      listOfCopyProgressDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<CopyProgressDetailsResponse>(
          map['listOfCopyProgressDetails']!,
          (value) => CopyProgressDetailsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      migrationState: pulumi.Input.fromValue(map['migrationState'] as String),
      sqlDataCopyErrors: pulumi.Input.fromValue(
        (map['sqlDataCopyErrors'] as List).cast<String>(),
      ),
    );
  }
}
