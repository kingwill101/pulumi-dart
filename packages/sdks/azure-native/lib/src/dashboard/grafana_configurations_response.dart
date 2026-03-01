// ignore_for_file: unused_element, unnecessary_cast

import 'security_response.dart';
import 'smtp_response.dart';
import 'snapshots_response.dart';
import 'users_response.dart';

/// Server configurations of a Grafana instance
class GrafanaConfigurationsResponse {
  /// Grafana security settings
  final SecurityResponse? security;
  /// Email server settings.
  /// https://grafana.com/docs/grafana/v9.0/setup-grafana/configure-grafana/#smtp
  final SmtpResponse? smtp;
  /// Grafana Snapshots settings
  final SnapshotsResponse? snapshots;
  /// Grafana users settings
  final UsersResponse? users;

  /// Creates a new [GrafanaConfigurationsResponse].
  /// [security] Grafana security settings
  /// [smtp] Email server settings.
  /// [snapshots] Grafana Snapshots settings
  /// [users] Grafana users settings
  GrafanaConfigurationsResponse({
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

  factory GrafanaConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return GrafanaConfigurationsResponse(
      security: map['security'] == null ? null : SecurityResponse.fromMap((map['security'] as Map).cast<String, dynamic>()),
      smtp: map['smtp'] == null ? null : SmtpResponse.fromMap((map['smtp'] as Map).cast<String, dynamic>()),
      snapshots: map['snapshots'] == null ? null : SnapshotsResponse.fromMap((map['snapshots'] as Map).cast<String, dynamic>()),
      users: map['users'] == null ? null : UsersResponse.fromMap((map['users'] as Map).cast<String, dynamic>()),
    );
  }
}

