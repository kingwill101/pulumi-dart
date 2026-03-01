// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'copy_progress_details_response.dart';

/// Detailed status of current Sql Db migration.
class SqlDbMigrationStatusDetailsResponse {
  /// Details on progress of ADF copy activities.
  final List<CopyProgressDetailsResponse> listOfCopyProgressDetails;
  /// Current State of Migration.
  final String migrationState;
  /// Sql Data Copy errors, if any.
  final List<String> sqlDataCopyErrors;

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
      'listOfCopyProgressDetails': pulumi.Input.encodeList<CopyProgressDetailsResponse, Map<String, dynamic>>(listOfCopyProgressDetails, (value) => value.toMap()),
      'migrationState': migrationState,
      'sqlDataCopyErrors': sqlDataCopyErrors,
    };
  }

  factory SqlDbMigrationStatusDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SqlDbMigrationStatusDetailsResponse(
      listOfCopyProgressDetails: pulumi.Input.decodeList<CopyProgressDetailsResponse>(map['listOfCopyProgressDetails'], (value) => CopyProgressDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      migrationState: map['migrationState'] as String,
      sqlDataCopyErrors: (map['sqlDataCopyErrors'] as List).cast<String>(),
    );
  }
}

