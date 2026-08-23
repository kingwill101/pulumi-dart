// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security.dart';
import 'smtp.dart';
import 'snapshots.dart';
import 'users.dart';

/// Server configurations of a Grafana instance
class GrafanaConfigurations {
  /// Grafana security settings
  final pulumi.Input<Security>? security;
  /// Email server settings.
  /// https://grafana.com/docs/grafana/v9.0/setup-grafana/configure-grafana/#smtp
  final pulumi.Input<Smtp>? smtp;
  /// Grafana Snapshots settings
  final pulumi.Input<Snapshots>? snapshots;
  /// Grafana users settings
  final pulumi.Input<Users>? users;

  /// Creates a new [GrafanaConfigurations].
  /// [security] Grafana security settings
  /// [smtp] Email server settings.
  /// [snapshots] Grafana Snapshots settings
  /// [users] Grafana users settings
  const GrafanaConfigurations({
    this.security,
    this.smtp,
    this.snapshots,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'security': ?pulumi.Input.mapOptionalInputValue<Security, Map<String, dynamic>>(security, (value) => value.toMap()),
      'smtp': ?pulumi.Input.mapOptionalInputValue<Smtp, Map<String, dynamic>>(smtp, (value) => value.toMap()),
      'snapshots': ?pulumi.Input.mapOptionalInputValue<Snapshots, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'users': ?pulumi.Input.mapOptionalInputValue<Users, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GrafanaConfigurations.fromMap(Map<String, dynamic> map) {
    return GrafanaConfigurations(
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Security.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smtp: (() { final guardedValue = map['smtp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Smtp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshots: (() { final guardedValue = map['snapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Snapshots.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Users.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
