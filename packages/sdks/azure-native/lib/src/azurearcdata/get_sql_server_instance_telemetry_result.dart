// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_instance_telemetry_column_response.dart';

/// Result data returned by getSqlServerInstanceTelemetry.
class GetSqlServerInstanceTelemetryResult {
  /// The columns of the result telemetry table for the SQL Server instance.
  final List<SqlServerInstanceTelemetryColumnResponse> columns;
  /// The link to the next section of rows of the telemetry response for the SQL Server instance. Null if no more sections are available.
  final String nextLink;
  /// A list of rows from the result telemetry table for the SQL Server instance.
  final List<List<String>> rows;

  /// Creates a new [GetSqlServerInstanceTelemetryResult].
  /// [columns] The columns of the result telemetry table for the SQL Server instance.
  /// [nextLink] The link to the next section of rows of the telemetry response for the SQL Server instance. Null if no more sections are available.
  /// [rows] A list of rows from the result telemetry table for the SQL Server instance.
  const GetSqlServerInstanceTelemetryResult({
    required this.columns,
    required this.nextLink,
    required this.rows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.encodeList<SqlServerInstanceTelemetryColumnResponse, Map<String, dynamic>>(columns, (value) => value.toMap()),
      'nextLink': nextLink,
      'rows': rows,
    };
  }

  factory GetSqlServerInstanceTelemetryResult.fromMap(Map<String, dynamic> map) {
    return GetSqlServerInstanceTelemetryResult(
      columns: pulumi.Input.decodeList<SqlServerInstanceTelemetryColumnResponse>(map['columns']!, (value) => SqlServerInstanceTelemetryColumnResponse.fromMap((value as Map).cast<String, dynamic>())),
      nextLink: map['nextLink'] as String,
      rows: (map['rows'] as List).cast<List<String>>(),
    );
  }
}
