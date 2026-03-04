// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reportable_exception_response.dart';

/// Output for task that validates migration input for Oracle to Azure Database for PostgreSQL for online migrations
class ValidateOracleAzureDbPostgreSqlSyncTaskOutputResponse {
  /// Errors associated with a selected database object
  final pulumi.Input<List<ReportableExceptionResponse>> validationErrors;

  /// Creates a new [ValidateOracleAzureDbPostgreSqlSyncTaskOutputResponse].
  /// [validationErrors] Errors associated with a selected database object
  ValidateOracleAzureDbPostgreSqlSyncTaskOutputResponse({
    required this.validationErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationErrors':
          pulumi.Input.mapInputValue<
            List<ReportableExceptionResponse>,
            List<Map<String, dynamic>>
          >(
            validationErrors,
            (value) =>
                pulumi.Input.encodeList<
                  ReportableExceptionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ValidateOracleAzureDbPostgreSqlSyncTaskOutputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ValidateOracleAzureDbPostgreSqlSyncTaskOutputResponse(
      validationErrors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ReportableExceptionResponse>(
          map['validationErrors']!,
          (value) => ReportableExceptionResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
