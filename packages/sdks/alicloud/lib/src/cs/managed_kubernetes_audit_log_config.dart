// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedKubernetesAuditLogConfig {
  /// Whether to enable audit logging. Valid values: `true`, `false`.
  final pulumi.Input<bool>? enabled;

  /// The SLS project to which the Logstore storing the cluster audit logs belongs.
  final pulumi.Input<String>? slsProjectName;

  /// Creates a new [ManagedKubernetesAuditLogConfig].
  /// [enabled] Whether to enable audit logging. Valid values: `true`, `false`.
  /// [slsProjectName] The SLS project to which the Logstore storing the cluster audit logs belongs.
  ManagedKubernetesAuditLogConfig({this.enabled, this.slsProjectName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'slsProjectName': ?slsProjectName,
    };
  }

  factory ManagedKubernetesAuditLogConfig.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesAuditLogConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      slsProjectName: (() {
        final guardedValue = map['slsProjectName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
