// ignore_for_file: unused_element, unnecessary_cast

import 'sql_connection_info.dart';

/// Input for the task that validates connection to SQL Server and also validates source server requirements
class ConnectToSourceSqlServerTaskInput {
  /// Permission group for validations
  final String? checkPermissionsGroup;
  /// Flag for whether to collect agent jobs from source server.
  final bool? collectAgentJobs;
  /// Flag for whether to collect databases from source server.
  final bool? collectDatabases;
  /// Flag for whether to collect logins from source server.
  final bool? collectLogins;
  /// Flag for whether to collect TDE Certificate names from source server.
  final bool? collectTdeCertificateInfo;
  /// encrypted key for secure fields
  final String? encryptedKeyForSecureFields;
  /// Connection information for Source SQL Server
  final SqlConnectionInfo sourceConnectionInfo;
  /// Flag for whether to validate SSIS catalog is reachable on the source server.
  final bool? validateSsisCatalogOnly;

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
      'sourceConnectionInfo': sourceConnectionInfo.toMap(),
      'validateSsisCatalogOnly': ?validateSsisCatalogOnly,
    };
  }

  factory ConnectToSourceSqlServerTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskInput(
      checkPermissionsGroup: map['checkPermissionsGroup'] == null ? null : map['checkPermissionsGroup'] as String,
      collectAgentJobs: map['collectAgentJobs'] == null ? null : map['collectAgentJobs'] as bool,
      collectDatabases: map['collectDatabases'] == null ? null : map['collectDatabases'] as bool,
      collectLogins: map['collectLogins'] == null ? null : map['collectLogins'] as bool,
      collectTdeCertificateInfo: map['collectTdeCertificateInfo'] == null ? null : map['collectTdeCertificateInfo'] as bool,
      encryptedKeyForSecureFields: map['encryptedKeyForSecureFields'] == null ? null : map['encryptedKeyForSecureFields'] as String,
      sourceConnectionInfo: SqlConnectionInfo.fromMap((map['sourceConnectionInfo'] as Map).cast<String, dynamic>()),
      validateSsisCatalogOnly: map['validateSsisCatalogOnly'] == null ? null : map['validateSsisCatalogOnly'] as bool,
    );
  }
}

