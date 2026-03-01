// ignore_for_file: unused_element, unnecessary_cast

import 'migration_eligibility_info_response.dart';

/// Login level output for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskOutputLoginLevelResponse {
  /// The default database for the login.
  final String defaultDatabase;
  /// Result identifier
  final String id;
  /// The state of the login.
  final bool isEnabled;
  /// The type of login.
  final String loginType;
  /// Information about eligibility of login for migration.
  final MigrationEligibilityInfoResponse migrationEligibility;
  /// Login name.
  final String name;
  /// Type of result - database level or task level
  /// Expected value is 'LoginLevelOutput'.
  final String resultType;

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
      'migrationEligibility': migrationEligibility.toMap(),
      'name': name,
      'resultType': resultType,
    };
  }

  factory ConnectToSourceSqlServerTaskOutputLoginLevelResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskOutputLoginLevelResponse(
      defaultDatabase: map['defaultDatabase'] as String,
      id: map['id'] as String,
      isEnabled: map['isEnabled'] as bool,
      loginType: map['loginType'] as String,
      migrationEligibility: MigrationEligibilityInfoResponse.fromMap((map['migrationEligibility'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      resultType: map['resultType'] as String,
    );
  }
}

