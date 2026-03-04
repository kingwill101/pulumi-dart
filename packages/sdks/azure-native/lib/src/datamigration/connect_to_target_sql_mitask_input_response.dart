// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info_response.dart';

/// Input for the task that validates connection to Azure SQL Database Managed Instance.
class ConnectToTargetSqlMITaskInputResponse {
  /// Flag for whether to collect agent jobs from target SQL MI server.
  final pulumi.Input<bool>? collectAgentJobs;

  /// Flag for whether to collect logins from target SQL MI server.
  final pulumi.Input<bool>? collectLogins;

  /// Connection information for target SQL Server
  final pulumi.Input<SqlConnectionInfoResponse> targetConnectionInfo;

  /// Flag for whether to validate SSIS catalog is reachable on the target SQL MI server.
  final pulumi.Input<bool>? validateSsisCatalogOnly;

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
      'targetConnectionInfo':
          pulumi.Input.mapInputValue<
            SqlConnectionInfoResponse,
            Map<String, dynamic>
          >(targetConnectionInfo, (value) => value.toMap()),
      'validateSsisCatalogOnly': ?validateSsisCatalogOnly,
    };
  }

  factory ConnectToTargetSqlMITaskInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectToTargetSqlMITaskInputResponse(
      collectAgentJobs: (() {
        final guardedValue = map['collectAgentJobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      collectLogins: (() {
        final guardedValue = map['collectLogins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      targetConnectionInfo: pulumi.Input.fromValue(
        SqlConnectionInfoResponse.fromMap(
          (map['targetConnectionInfo']! as Map).cast<String, dynamic>(),
        ),
      ),
      validateSsisCatalogOnly: (() {
        final guardedValue = map['validateSsisCatalogOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
