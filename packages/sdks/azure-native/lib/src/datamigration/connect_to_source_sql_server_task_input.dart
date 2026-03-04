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
      'sourceConnectionInfo':
          pulumi.Input.mapInputValue<SqlConnectionInfo, Map<String, dynamic>>(
            sourceConnectionInfo,
            (value) => value.toMap(),
          ),
      'validateSsisCatalogOnly': ?validateSsisCatalogOnly,
    };
  }

  factory ConnectToSourceSqlServerTaskInput.fromMap(Map<String, dynamic> map) {
    return ConnectToSourceSqlServerTaskInput(
      checkPermissionsGroup: (() {
        final guardedValue = map['checkPermissionsGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      collectAgentJobs: (() {
        final guardedValue = map['collectAgentJobs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      collectDatabases: (() {
        final guardedValue = map['collectDatabases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      collectLogins: (() {
        final guardedValue = map['collectLogins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      collectTdeCertificateInfo: (() {
        final guardedValue = map['collectTdeCertificateInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryptedKeyForSecureFields: (() {
        final guardedValue = map['encryptedKeyForSecureFields'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceConnectionInfo: pulumi.Input.fromValue(
        SqlConnectionInfo.fromMap(
          (map['sourceConnectionInfo']! as Map).cast<String, dynamic>(),
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
