// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CFNKubernetesAuditLogsConfiguration
class CFNKubernetesAuditLogsConfigurationResponse {
  /// Property enable
  final pulumi.Input<bool>? enable;

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
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
    );
  }
}

