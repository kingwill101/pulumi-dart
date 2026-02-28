// ignore_for_file: unused_element, unnecessary_cast


class DetectorDatasourcesKubernetesAuditLogs {
  /// If true, enables Kubernetes audit logs as a data source for [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  /// Defaults to `true`.
  final bool enable;

  /// Creates a new [DetectorDatasourcesKubernetesAuditLogs].
  /// [enable] If true, enables Kubernetes audit logs as a data source for [Kubernetes protection](https://docs.aws.amazon.com/guardduty/latest/ug/kubernetes-protection.html).
  DetectorDatasourcesKubernetesAuditLogs({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory DetectorDatasourcesKubernetesAuditLogs.fromMap(Map<String, dynamic> map) {
    return DetectorDatasourcesKubernetesAuditLogs(
      enable: map['enable'] as bool,
    );
  }
}

