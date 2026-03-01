// ignore_for_file: unused_element, unnecessary_cast

import 'cfnkubernetes_audit_logs_configuration.dart';

/// Definition of CFNKubernetesConfiguration
class CFNKubernetesConfiguration {
  /// Property auditLogs
  final CFNKubernetesAuditLogsConfiguration? auditLogs;

  /// Creates a new [CFNKubernetesConfiguration].
  /// [auditLogs] Property auditLogs
  CFNKubernetesConfiguration({
    this.auditLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogs': ?auditLogs == null ? null : auditLogs!.toMap(),
    };
  }

  factory CFNKubernetesConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNKubernetesConfiguration(
      auditLogs: map['auditLogs'] == null ? null : CFNKubernetesAuditLogsConfiguration.fromMap((map['auditLogs'] as Map).cast<String, dynamic>()),
    );
  }
}

