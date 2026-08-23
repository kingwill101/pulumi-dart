// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNKubernetesAuditLogsConfiguration
class CFNKubernetesAuditLogsConfiguration {
  /// Property enable
  final pulumi.Input<bool>? enable;

  /// Creates a new [CFNKubernetesAuditLogsConfiguration].
  /// [enable] Property enable
  const CFNKubernetesAuditLogsConfiguration({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory CFNKubernetesAuditLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return CFNKubernetesAuditLogsConfiguration(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
