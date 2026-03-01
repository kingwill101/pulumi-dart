// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure SQL Database Managed Instance.
class ConnectToTargetSqlMITaskInputResponse {
  /// Flag for whether to collect agent jobs from target SQL MI server.
  final bool? collectAgentJobs;
  /// Flag for whether to collect logins from target SQL MI server.
  final bool? collectLogins;
  /// Connection information for target SQL Server
  final SqlConnectionInfoResponse targetConnectionInfo;
  /// Flag for whether to validate SSIS catalog is reachable on the target SQL MI server.
  final bool? validateSsisCatalogOnly;

  /// Creates a new [ConnectToTargetSqlMITaskInputResponse].
  /// [collectAgentJobs] Flag for whether to collect agent jobs from target SQL MI server.
  /// [collectLogins] Flag for whether to collect logins from target SQL MI server.
  /// [targetConnectionInfo] Connection information for target SQL Server
  /// [validateSsisCatalogOnly] Flag for whether to validate SSIS catalog is reachable on the target SQL MI server.
  ConnectToTargetSqlMITaskInputResponse({
    this.collectAgentJobs,
    this.collectLogins,
    required this.targetConnectionInfo,
    this.validateSsisCatalogOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectAgentJobs': ?collectAgentJobs,
      'collectLogins': ?collectLogins,
      'targetConnectionInfo': targetConnectionInfo.toMap(),
      'validateSsisCatalogOnly': ?validateSsisCatalogOnly,
    };
  }

  factory ConnectToTargetSqlMITaskInputResponse.fromMap(Map<String, dynamic> map) {
    return ConnectToTargetSqlMITaskInputResponse(
      collectAgentJobs: map['collectAgentJobs'] == null ? null : map['collectAgentJobs'] as bool,
      collectLogins: map['collectLogins'] == null ? null : map['collectLogins'] as bool,
      targetConnectionInfo: SqlConnectionInfoResponse.fromMap((map['targetConnectionInfo'] as Map).cast<String, dynamic>()),
      validateSsisCatalogOnly: map['validateSsisCatalogOnly'] == null ? null : map['validateSsisCatalogOnly'] as bool,
    );
  }
}

