// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnkubernetes_audit_logs_configuration_response.dart';

/// Definition of CFNKubernetesConfiguration
class CFNKubernetesConfigurationResponse {
  /// Property auditLogs
  final pulumi.Input<CFNKubernetesAuditLogsConfigurationResponse>? auditLogs;

  /// Creates a new [CFNKubernetesConfigurationResponse].
  /// [auditLogs] Property auditLogs
  const CFNKubernetesConfigurationResponse({
    this.auditLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogs': ?pulumi.Input.mapOptionalInputValue<CFNKubernetesAuditLogsConfigurationResponse, Map<String, dynamic>>(auditLogs, (value) => value.toMap()),
    };
  }

  factory CFNKubernetesConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNKubernetesConfigurationResponse(
      auditLogs: (() { final guardedValue = map['auditLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CFNKubernetesAuditLogsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
