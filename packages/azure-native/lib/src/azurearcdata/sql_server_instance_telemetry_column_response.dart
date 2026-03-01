// ignore_for_file: unused_element, unnecessary_cast


/// The telemetry column for the SQL Server instance.
class SqlServerInstanceTelemetryColumnResponse {
  /// The name of the telemetry column.
  final String? name;
  /// The type of the telemetry column.
  final String? type;

  /// Creates a new [SqlServerInstanceTelemetryColumnResponse].
  /// [name] The name of the telemetry column.
  /// [type] The type of the telemetry column.
  SqlServerInstanceTelemetryColumnResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory SqlServerInstanceTelemetryColumnResponse.fromMap(Map<String, dynamic> map) {
    return SqlServerInstanceTelemetryColumnResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

