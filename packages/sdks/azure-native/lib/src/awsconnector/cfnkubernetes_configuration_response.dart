// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cfnkubernetes_audit_logs_configuration_response.dart';

/// Definition of CFNKubernetesConfiguration
class CFNKubernetesConfigurationResponse {
  /// Property auditLogs
  final pulumi.Input<CFNKubernetesAuditLogsConfigurationResponse>? auditLogs;

  /// Creates a new [CFNKubernetesConfigurationResponse].
  /// [auditLogs] Property auditLogs
  CFNKubernetesConfigurationResponse({
    this.auditLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogs': ?pulumi.Input.mapOptionalInputValue<CFNKubernetesAuditLogsConfigurationResponse, Map<String, dynamic>>(auditLogs, (value) => value.toMap()),
    };
  }

  factory CFNKubernetesConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNKubernetesConfigurationResponse(
      auditLogs: map['auditLogs'] == null ? null : (CFNKubernetesAuditLogsConfigurationResponse.fromMap((map['auditLogs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

