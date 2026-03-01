// ignore_for_file: unused_element, unnecessary_cast


/// Email server settings.
/// https://grafana.com/docs/grafana/v9.0/setup-grafana/configure-grafana/#smtp
class Smtp {
  /// Enable this to allow Grafana to send email. Default is false
  final bool? enabled;
  /// Address used when sending out emails
  /// https://pkg.go.dev/net/mail#Address
  final String? fromAddress;
  /// Name to be used when sending out emails. Default is "Azure Managed Grafana Notification"
  /// https://pkg.go.dev/net/mail#Address
  final String? fromName;
  /// SMTP server hostname with port, e.g. test.email.net:587
  final String? host;
  /// Password of SMTP auth. If the password contains # or ;, then you have to wrap it with triple quotes
  final String? password;
  /// Verify SSL for SMTP server. Default is false
  /// https://pkg.go.dev/crypto/tls#Config
  final bool? skipVerify;
  /// The StartTLSPolicy setting of the SMTP configuration
  /// https://pkg.go.dev/github.com/go-mail/mail#StartTLSPolicy
  final String? startTLSPolicy;
  /// User of SMTP auth
  final String? user;

  /// Creates a new [Smtp].
  /// [enabled] Enable this to allow Grafana to send email. Default is false
  /// [fromAddress] Address used when sending out emails
  /// [fromName] Name to be used when sending out emails. Default is "Azure Managed Grafana Notification"
  /// [host] SMTP server hostname with port, e.g. test.email.net:587
  /// [password] Password of SMTP auth. If the password contains # or ;, then you have to wrap it with triple quotes
  /// [skipVerify] Verify SSL for SMTP server. Default is false
  /// [startTLSPolicy] The StartTLSPolicy setting of the SMTP configuration
  /// [user] User of SMTP auth
  Smtp({
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

  factory Smtp.fromMap(Map<String, dynamic> map) {
    return Smtp(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      fromAddress: map['fromAddress'] == null ? null : map['fromAddress'] as String,
      fromName: map['fromName'] == null ? null : map['fromName'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      skipVerify: map['skipVerify'] == null ? null : map['skipVerify'] as bool,
      startTLSPolicy: map['startTLSPolicy'] == null ? null : map['startTLSPolicy'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

