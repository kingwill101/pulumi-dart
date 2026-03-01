// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CFNKubernetesAuditLogsConfiguration
class CFNKubernetesAuditLogsConfiguration {
  /// Property enable
  final bool? enable;

  /// Creates a new [CFNKubernetesAuditLogsConfiguration].
  /// [enable] Property enable
  CFNKubernetesAuditLogsConfiguration({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory CFNKubernetesAuditLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNKubernetesAuditLogsConfiguration(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}

