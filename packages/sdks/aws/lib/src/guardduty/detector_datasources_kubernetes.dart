// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'detector_datasources_kubernetes_audit_logs.dart';

class DetectorDatasourcesKubernetes {
  /// Configures Kubernetes audit logs as a data source for [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  /// See Kubernetes Audit Logs below for more details.
  final pulumi.Input<DetectorDatasourcesKubernetesAuditLogs> auditLogs;

  /// Creates a new [DetectorDatasourcesKubernetes].
  /// [auditLogs] Configures Kubernetes audit logs as a data source for [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  DetectorDatasourcesKubernetes({
    required this.auditLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogs': pulumi.Input.mapInputValue<DetectorDatasourcesKubernetesAuditLogs, Map<String, dynamic>>(auditLogs, (value) => value.toMap()),
    };
  }

  factory DetectorDatasourcesKubernetes.fromMap(Map<String, dynamic> map) {
    return DetectorDatasourcesKubernetes(
      auditLogs: pulumi.Input.fromValue(DetectorDatasourcesKubernetesAuditLogs.fromMap((map['auditLogs']! as Map).cast<String, dynamic>())),
    );
  }
}

