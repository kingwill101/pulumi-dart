// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFileSystemAuditLogConfiguration {
  /// ARN for the destination of the audit logs.
  final pulumi.Input<String> auditLogDestination;
  /// Attempt type logged by Amazon FSx for file and folder accesses.
  final pulumi.Input<String> fileAccessAuditLogLevel;
  /// Attempt type logged by Amazon FSx for file share accesses.
  final pulumi.Input<String> fileShareAccessAuditLogLevel;

  /// Creates a new [GetWindowsFileSystemAuditLogConfiguration].
  /// [auditLogDestination] ARN for the destination of the audit logs.
  /// [fileAccessAuditLogLevel] Attempt type logged by Amazon FSx for file and folder accesses.
  /// [fileShareAccessAuditLogLevel] Attempt type logged by Amazon FSx for file share accesses.
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
