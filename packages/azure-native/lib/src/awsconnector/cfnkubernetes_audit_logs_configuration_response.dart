// ignore_for_file: unused_element, unnecessary_cast


/// Definition of CFNKubernetesAuditLogsConfiguration
class CFNKubernetesAuditLogsConfigurationResponse {
  /// Property enable
  final bool? enable;

  /// Creates a new [CFNKubernetesAuditLogsConfigurationResponse].
  /// [enable] Property enable
  CFNKubernetesAuditLogsConfigurationResponse({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory CFNKubernetesAuditLogsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNKubernetesAuditLogsConfigurationResponse(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}

