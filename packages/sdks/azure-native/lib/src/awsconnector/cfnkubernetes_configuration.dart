// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnkubernetes_audit_logs_configuration.dart';

/// Definition of CFNKubernetesConfiguration
class CFNKubernetesConfiguration {
  /// Property auditLogs
  final pulumi.Input<CFNKubernetesAuditLogsConfiguration?>? auditLogs;

  /// Creates a new [CFNKubernetesConfiguration].
  /// [auditLogs] Property auditLogs
  const CFNKubernetesConfiguration({
    this.auditLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogs': ?pulumi.Input.mapOptionalInputValue<CFNKubernetesAuditLogsConfiguration, Map<String, dynamic>>(auditLogs, (value) => value.toMap()),
    };
  }

  factory CFNKubernetesConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNKubernetesConfiguration(
      auditLogs: (() { final guardedValue = map['auditLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNKubernetesAuditLogsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
