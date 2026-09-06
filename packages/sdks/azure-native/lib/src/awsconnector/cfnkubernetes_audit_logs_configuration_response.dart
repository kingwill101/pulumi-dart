// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNKubernetesAuditLogsConfiguration
class CFNKubernetesAuditLogsConfigurationResponse {
  /// Property enable
  final pulumi.Input<bool?>? enable;

  /// Creates a new [CFNKubernetesAuditLogsConfigurationResponse].
  /// [enable] Property enable
  const CFNKubernetesAuditLogsConfigurationResponse({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory CFNKubernetesAuditLogsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CFNKubernetesAuditLogsConfigurationResponse(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
