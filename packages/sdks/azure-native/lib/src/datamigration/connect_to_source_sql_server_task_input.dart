// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_connection_info.dart';

/// Input for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskInput {
  /// Permission group for validations
  final pulumi.Input<String>? checkPermissionsGroup;
  /// Flag for whether to collect agent jobs from source server.
  final pulumi.Input<bool>? collectAgentJobs;
  /// Flag for whether to collect databases from source server.
  final pulumi.Input<bool>? collectDatabases;
  /// Flag for whether to collect logins from source server.
  final pulumi.Input<bool>? collectLogins;
  /// Flag for whether to collect TDE Certificate names from source server.
  final pulumi.Input<bool>? collectTdeCertificateInfo;
  /// encrypted key for secure fields
  final pulumi.Input<String>? encryptedKeyForSecureFields;
  /// Connection information for Source SQL Server
  final pulumi.Input<SqlConnectionInfo> sourceConnectionInfo;
  /// Flag for whether to validate SSIS catalog is reachable on the source server.
  final pulumi.Input<bool>? validateSsisCatalogOnly;

  /// Creates a new [ConnectToSourceSqlServerTaskInput].
  /// [checkPermissionsGroup] Permission group for validations
  /// [collectAgentJobs] Flag for whether to collect agent jobs from source server.
  /// [collectDatabases] Flag for whether to collect databases from source server.
  /// [collectLogins] Flag for whether to collect logins from source server.
  /// [collectTdeCertificateInfo] Flag for whether to collect TDE Certificate names from source server.
  /// [encryptedKeyForSecureFields] encrypted key for secure fields
  /// [sourceConnectionInfo] Connection information for Source SQL Server
  /// [validateSsisCatalogOnly] Flag for whether to validate SSIS catalog is reachable on the source server.
  ConnectToSourceSqlServerTaskInput({
    this.checkPermissionsGroup,
    this.collectAgentJobs,
    this.collectDatabases,
    this.collectLogins,
    this.collectTdeCertificateInfo,
    this.encryptedKeyForSecureFields,
    required this.sourceConnectionInfo,
    this.validateSsisCatalogOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkPermissionsGroup': ?checkPermissionsGroup,
      'collectAgentJobs': ?collectAgentJobs,
      'collectDatabases': ?collectDatabases,
      'collectLogins': ?collectLogins,
      'collectTdeCertificateInfo': ?collectTdeCertificateInfo,
      'encryptedKeyForSecureFields': ?encryptedKeyForSecureFields,
      'sourceConnectionInfo': pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(sourceConnectionInfo, (value) => value.toMap()),
      'validateSsisCatalogOnly': ?validateSsisCatalogOnly,
    };
  }

  factory ConnectToSourceSqlServerTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskInput(
      checkPermissionsGroup: map['checkPermissionsGroup'] == null ? null : (map['checkPermissionsGroup'] as String).input(),
      collectAgentJobs: map['collectAgentJobs'] == null ? null : (map['collectAgentJobs'] as bool).input(),
      collectDatabases: map['collectDatabases'] == null ? null : (map['collectDatabases'] as bool).input(),
      collectLogins: map['collectLogins'] == null ? null : (map['collectLogins'] as bool).input(),
      collectTdeCertificateInfo: map['collectTdeCertificateInfo'] == null ? null : (map['collectTdeCertificateInfo'] as bool).input(),
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : (map['encryptedKeyForSecureFields'] as String).input(),
      sourceConnectionInfo: (SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>())).input(),
      validateSsisCatalogOnly: map['validateSsisCatalogOnly'] == null ? null : (map['validateSsisCatalogOnly'] as bool).input(),
    );
  }
}

