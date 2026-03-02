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
  GrafanaConfigurations({
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
      security: map['security'] == null ? null : (Security.fromMap((map['security']! as Map).cast<String, dynamic>())).input(),
      smtp: map['smtp'] == null ? null : (Smtp.fromMap((map['smtp']! as Map).cast<String, dynamic>())).input(),
      snapshots: map['snapshots'] == null ? null : (Snapshots.fromMap((map['snapshots']! as Map).cast<String, dynamic>())).input(),
      users: map['users'] == null ? null : (Users.fromMap((map['users']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

