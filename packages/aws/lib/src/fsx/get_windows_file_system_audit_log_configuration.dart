// ignore_for_file: unused_element, unnecessary_cast

class GetWindowsFileSystemAuditLogConfiguration {
  final String auditLogDestination;
  final String fileAccessAuditLogLevel;
  final String fileShareAccessAuditLogLevel;

  /// Creates a new [GetWindowsFileSystemAuditLogConfiguration].
  /// [auditLogDestination] Required.
  /// [fileAccessAuditLogLevel] Required.
  /// [fileShareAccessAuditLogLevel] Required.
  GetWindowsFileSystemAuditLogConfiguration({
    required this.auditLogDestination,
    required this.fileAccessAuditLogLevel,
    required this.fileShareAccessAuditLogLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auditLogDestination'] = auditLogDestination;
    map['fileAccessAuditLogLevel'] = fileAccessAuditLogLevel;
    map['fileShareAccessAuditLogLevel'] = fileShareAccessAuditLogLevel;
    return map;
  }

  factory GetWindowsFileSystemAuditLogConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetWindowsFileSystemAuditLogConfiguration(
      auditLogDestination: map['auditLogDestination'] as String,
      fileAccessAuditLogLevel: map['fileAccessAuditLogLevel'] as String,
      fileShareAccessAuditLogLevel:
          map['fileShareAccessAuditLogLevel'] as String,
    );
  }
}
