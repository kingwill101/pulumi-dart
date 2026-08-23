// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Email server settings.
/// https://grafana.com/docs/grafana/v9.0/setup-grafana/configure-grafana/#smtp
class SmtpResponse {
  /// Enable this to allow Grafana to send email. Default is false
  final pulumi.Input<bool>? enabled;
  /// Address used when sending out emails
  /// https://pkg.go.dev/net/mail#Address
  final pulumi.Input<String>? fromAddress;
  /// Name to be used when sending out emails. Default is "Azure Managed Grafana Notification"
  /// https://pkg.go.dev/net/mail#Address
  final pulumi.Input<String>? fromName;
  /// SMTP server hostname with port, e.g. test.email.net:587
  final pulumi.Input<String>? host;
  /// Password of SMTP auth. If the password contains # or ;, then you have to wrap it with triple quotes
  final pulumi.Input<String>? password;
  /// Verify SSL for SMTP server. Default is false
  /// https://pkg.go.dev/crypto/tls#Config
  final pulumi.Input<bool>? skipVerify;
  /// The StartTLSPolicy setting of the SMTP configuration
  /// https://pkg.go.dev/github.com/go-mail/mail#StartTLSPolicy
  final pulumi.Input<String>? startTLSPolicy;
  /// User of SMTP auth
  final pulumi.Input<String>? user;

  /// Creates a new [SmtpResponse].
  /// [enabled] Enable this to allow Grafana to send email. Default is false
  /// [fromAddress] Address used when sending out emails
  /// [fromName] Name to be used when sending out emails. Default is "Azure Managed Grafana Notification"
  /// [host] SMTP server hostname with port, e.g. test.email.net:587
  /// [password] Password of SMTP auth. If the password contains # or ;, then you have to wrap it with triple quotes
  /// [skipVerify] Verify SSL for SMTP server. Default is false
  /// [startTLSPolicy] The StartTLSPolicy setting of the SMTP configuration
  /// [user] User of SMTP auth
  const SmtpResponse({
    this.enabled,
    this.fromAddress,
    this.fromName,
    this.host,
    this.password,
    this.skipVerify,
    this.startTLSPolicy,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'fromAddress': ?fromAddress,
      'fromName': ?fromName,
      'host': ?host,
      'password': ?password,
      'skipVerify': ?skipVerify,
      'startTLSPolicy': ?startTLSPolicy,
      'user': ?user,
    };
  }

  factory SmtpResponse.fromMap(Map<String, dynamic> map) {
    return SmtpResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fromAddress: (() { final guardedValue = map['fromAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromName: (() { final guardedValue = map['fromName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipVerify: (() { final guardedValue = map['skipVerify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startTLSPolicy: (() { final guardedValue = map['startTLSPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
