// ignore_for_file: unused_element, unnecessary_cast

import 'organization_configuration_datasources_kubernetes_audit_logs.dart';

class OrganizationConfigurationDatasourcesKubernetes {
  /// Enable Kubernetes Audit Logs Monitoring automatically for new member accounts. [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  /// See Kubernetes Audit Logs below for more details.
  final OrganizationConfigurationDatasourcesKubernetesAuditLogs auditLogs;

  /// Creates a new [OrganizationConfigurationDatasourcesKubernetes].
  /// [auditLogs] Enable Kubernetes Audit Logs Monitoring automatically for new member accounts. [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  OrganizationConfigurationDatasourcesKubernetes({
    required this.auditLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogs': auditLogs.toMap(),
    };
  }

  factory OrganizationConfigurationDatasourcesKubernetes.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationDatasourcesKubernetes(
      auditLogs: OrganizationConfigurationDatasourcesKubernetesAuditLogs.fromMap((map['auditLogs'] as Map).cast<String, dynamic>()),
    );
  }
}

