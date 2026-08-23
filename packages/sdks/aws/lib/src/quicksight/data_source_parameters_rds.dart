// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceParametersRds {
  /// The database to which to connect.
  final pulumi.Input<String> database;
  /// The instance ID to which to connect.
  final pulumi.Input<String> instanceId;

  /// Creates a new [DataSourceParametersRds].
  /// [database] The database to which to connect.
  /// [instanceId] The instance ID to which to connect.
  const DataSourceParametersRds({
    required this.database,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'instanceId': instanceId,
    };
  }

  factory DataSourceParametersRds.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersRds(
      database: pulumi.Input.fromValue(map['database'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}
