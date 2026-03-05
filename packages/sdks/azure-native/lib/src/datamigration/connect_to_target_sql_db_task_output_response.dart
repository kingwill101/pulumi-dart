// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Output for the task that validates connection to SQL DB and target server requirements
class ConnectToTargetSqlDbTaskOutputResponse {
  /// Source databases as a map from database name to database id
  final pulumi.Input<Map<String, String>> databases;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Version of the target server
  final pulumi.Input<String> targetServerVersion;

  /// Creates a new [ConnectToTargetSqlDbTaskOutputResponse].
  /// [databases] Source databases as a map from database name to database id
  /// [id] Result identifier
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerVersion] Version of the target server
  ConnectToTargetSqlDbTaskOutputResponse({
    required this.databases,
    required this.id,
    required this.targetServerBrandVersion,
    required this.targetServerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': databases,
      'id': id,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerVersion': targetServerVersion,
    };
  }

  factory ConnectToTargetSqlDbTaskOutputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlDbTaskOutputResponse(
      databases: pulumi.Input.fromValue((map['databases'] as Map).cast<String, String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      targetServerBrandVersion: pulumi.Input.fromValue(map['targetServerBrandVersion'] as String),
      targetServerVersion: pulumi.Input.fromValue(map['targetServerVersion'] as String),
    );
  }
}

