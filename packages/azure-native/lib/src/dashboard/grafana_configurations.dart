// ignore_for_file: unused_element, unnecessary_cast

import 'security.dart';
import 'smtp.dart';
import 'snapshots.dart';
import 'users.dart';

/// Server configurations of a Grafana instance
class GrafanaConfigurations {
  /// Grafana security settings
  final Security? security;
  /// Email server settings.
  /// https://grafana.com/docs/grafana/v9.0/setup-grafana/configure-grafana/#smtp
  final Smtp? smtp;
  /// Grafana Snapshots settings
  final Snapshots? snapshots;
  /// Grafana users settings
  final Users? users;

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
      'security': ?security == null ? null : security!.toMap(),
      'smtp': ?smtp == null ? null : smtp!.toMap(),
      'snapshots': ?snapshots == null ? null : snapshots!.toMap(),
      'users': ?users == null ? null : users!.toMap(),
    };
  }

  factory GrafanaConfigurations.fromMap(Map<String, dynamic> map) {
    return GrafanaConfigurations(
      security: map['security'] == null ? null : Security.fromMap((map['security'] as Map).cast<String, dynamic>()),
      smtp: map['smtp'] == null ? null : Smtp.fromMap((map['smtp'] as Map).cast<String, dynamic>()),
      snapshots: map['snapshots'] == null ? null : Snapshots.fromMap((map['snapshots'] as Map).cast<String, dynamic>()),
      users: map['users'] == null ? null : Users.fromMap((map['users'] as Map).cast<String, dynamic>()),
    );
  }
}

