// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_instance_telemetry_column_response.dart';

/// Result data returned by getSqlServerInstanceTelemetry.
class GetSqlServerInstanceTelemetryResult {
  /// The columns of the result telemetry table for the SQL Server instance.
  final List<SqlServerInstanceTelemetryColumnResponse>? columns;
  /// The link to the next section of rows of the telemetry response for the SQL Server instance. Null if no more sections are available.
  final String? nextLink;
  /// A list of rows from the result telemetry table for the SQL Server instance.
  final List<List<String>>? rows;

  /// Creates a new [GetSqlServerInstanceTelemetryResult].
  /// [columns] The columns of the result telemetry table for the SQL Server instance.
  /// [nextLink] The link to the next section of rows of the telemetry response for the SQL Server instance. Null if no more sections are available.
  /// [rows] A list of rows from the result telemetry table for the SQL Server instance.
  const GetSqlServerInstanceTelemetryResult({
    this.columns,
    this.nextLink,
    this.rows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?(() { final guardedValue = columns; if (guardedValue == null) return null; return pulumi.Input.encodeList<SqlServerInstanceTelemetryColumnResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nextLink': ?nextLink,
      'rows': ?rows,
    };
  }

  factory GetSqlServerInstanceTelemetryResult.fromMap(Map<String, dynamic> map) {
    return GetSqlServerInstanceTelemetryResult(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SqlServerInstanceTelemetryColumnResponse>(guardedValue, (value) => SqlServerInstanceTelemetryColumnResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rows: (() { final guardedValue = map['rows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<List<String>>(guardedValue, (value) => (value as List).cast<String>()); })(),
    );
  }
}
