// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The telemetry column for the SQL Server instance.
class SqlServerInstanceTelemetryColumnResponse {
  /// The name of the telemetry column.
  final pulumi.Input<String>? name;
  /// The type of the telemetry column.
  final pulumi.Input<String>? type;

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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

