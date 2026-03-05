// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_eligibility_info_response.dart';

/// Login level output for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskOutputLoginLevelResponse {
  /// The default database for the login.
  final pulumi.Input<String> defaultDatabase;
  /// Result identifier
  final pulumi.Input<String> id;
  /// The state of the login.
  final pulumi.Input<bool> isEnabled;
  /// The type of login.
  final pulumi.Input<String> loginType;
  /// Information about eligibility of login for migration.
  final pulumi.Input<MigrationEligibilityInfoResponse> migrationEligibility;
  /// Login name.
  final pulumi.Input<String> name;
  /// Type of result - database level or task level
  /// Expected value is 'LoginLevelOutput'.
  final pulumi.Input<String> resultType;

  /// Creates a new [ConnectToSourceSqlServerTaskOutputLoginLevelResponse].
  /// [defaultDatabase] The default database for the login.
  /// [id] Result identifier
  /// [isEnabled] The state of the login.
  /// [loginType] The type of login.
  /// [migrationEligibility] Information about eligibility of login for migration.
  /// [name] Login name.
  /// [resultType] Type of result - database level or task level
  ConnectToSourceSqlServerTaskOutputLoginLevelResponse({
    required this.defaultDatabase,
    required this.id,
    required this.isEnabled,
    required this.loginType,
    required this.migrationEligibility,
    required this.name,
    required this.resultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultDatabase': defaultDatabase,
      'id': id,
      'isEnabled': isEnabled,
      'loginType': loginType,
      'migrationEligibility': pulumi.Input.mapInputValue<MigrationEligibilityInfoResponse, Map<String, dynamic>>(migrationEligibility, (value) => value.toMap()),
      'name': name,
      'resultType': resultType,
    };
  }

  factory ConnectToSourceSqlServerTaskOutputLoginLevelResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskOutputLoginLevelResponse(
      defaultDatabase: pulumi.Input.fromValue(map['defaultDatabase'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      isEnabled: pulumi.Input.fromValue(map['isEnabled'] as bool),
      loginType: pulumi.Input.fromValue(map['loginType'] as String),
      migrationEligibility: pulumi.Input.fromValue(MigrationEligibilityInfoResponse.fromMap((map['migrationEligibility']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
    );
  }
}

