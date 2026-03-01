// ignore_for_file: unused_element, unnecessary_cast


class ManagedKubernetesAuditLogConfig {
  /// Whether to enable audit logging. Valid values: `true`, `false`.
  final bool? enabled;
  /// The SLS project to which the Logstore storing the cluster audit logs belongs.
  final String? slsProjectName;

  /// Creates a new [ManagedKubernetesAuditLogConfig].
  /// [enabled] Whether to enable audit logging. Valid values: `true`, `false`.
  /// [slsProjectName] The SLS project to which the Logstore storing the cluster audit logs belongs.
  ManagedKubernetesAuditLogConfig({
    this.enabled,
    this.slsProjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'slsProjectName': ?slsProjectName,
    };
  }

  factory ManagedKubernetesAuditLogConfig.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesAuditLogConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      slsProjectName: map['slsProjectName'] == null ? null : map['slsProjectName'] as String,
    );
  }
}

