// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_response.dart';
import 'smtp_response.dart';
import 'snapshots_response.dart';
import 'users_response.dart';

/// Server configurations of a Grafana instance
class GrafanaConfigurationsResponse {
  /// Grafana security settings
  final pulumi.Input<SecurityResponse>? security;
  /// Email server settings.
  /// https://grafana.com/docs/grafana/v9.0/setup-grafana/configure-grafana/#smtp
  final pulumi.Input<SmtpResponse>? smtp;
  /// Grafana Snapshots settings
  final pulumi.Input<SnapshotsResponse>? snapshots;
  /// Grafana users settings
  final pulumi.Input<UsersResponse>? users;

  /// Creates a new [GrafanaConfigurationsResponse].
  /// [security] Grafana security settings
  /// [smtp] Email server settings.
  /// [snapshots] Grafana Snapshots settings
  /// [users] Grafana users settings
  const GrafanaConfigurationsResponse({
    this.security,
    this.smtp,
    this.snapshots,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'security': ?pulumi.Input.mapOptionalInputValue<SecurityResponse, Map<String, dynamic>>(security, (value) => value.toMap()),
      'smtp': ?pulumi.Input.mapOptionalInputValue<SmtpResponse, Map<String, dynamic>>(smtp, (value) => value.toMap()),
      'snapshots': ?pulumi.Input.mapOptionalInputValue<SnapshotsResponse, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'users': ?pulumi.Input.mapOptionalInputValue<UsersResponse, Map<String, dynamic>>(users, (value) => value.toMap()),
    };
  }

  factory GrafanaConfigurationsResponse.fromMap(Map<String, dynamic> map) {
    return GrafanaConfigurationsResponse(
      security: (() { final guardedValue = map['security']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smtp: (() { final guardedValue = map['smtp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SmtpResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      snapshots: (() { final guardedValue = map['snapshots']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SnapshotsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      users: (() { final guardedValue = map['users']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UsersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

