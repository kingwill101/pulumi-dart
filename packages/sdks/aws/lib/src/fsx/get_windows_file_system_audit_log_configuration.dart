// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFileSystemAuditLogConfiguration {
  final pulumi.Input<String> auditLogDestination;
  final pulumi.Input<String> fileAccessAuditLogLevel;
  final pulumi.Input<String> fileShareAccessAuditLogLevel;

  /// Creates a new [GetWindowsFileSystemAuditLogConfiguration].
  /// [auditLogDestination] Required.
  /// [fileAccessAuditLogLevel] Required.
  /// [fileShareAccessAuditLogLevel] Required.
  const GetWindowsFileSystemAuditLogConfiguration({
    required this.auditLogDestination,
    required this.fileAccessAuditLogLevel,
    required this.fileShareAccessAuditLogLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogDestination': auditLogDestination,
      'fileAccessAuditLogLevel': fileAccessAuditLogLevel,
      'fileShareAccessAuditLogLevel': fileShareAccessAuditLogLevel,
    };
  }

  factory GetWindowsFileSystemAuditLogConfiguration.fromMap(Map<String, dynamic> map) {
    return GetWindowsFileSystemAuditLogConfiguration(
      auditLogDestination: pulumi.Input.fromValue(map['auditLogDestination'] as String),
      fileAccessAuditLogLevel: pulumi.Input.fromValue(map['fileAccessAuditLogLevel'] as String),
      fileShareAccessAuditLogLevel: pulumi.Input.fromValue(map['fileShareAccessAuditLogLevel'] as String),
    );
  }
}
