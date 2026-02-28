// ignore_for_file: unused_element, unnecessary_cast

class CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig {
  /// Client key value or parameter name to pass it through.
  final String clientKey;

  /// Issuer value or parameter name to pass it through.
  final String issuer;

  /// Subject value or parameter name to pass it through.
  final String subject;

  /// Creates a new [CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig].
  /// [clientKey] Client key value or parameter name to pass it through.
  /// [issuer] Issuer value or parameter name to pass it through.
  /// [subject] Subject value or parameter name to pass it through.
  CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig({
    required this.clientKey,
    required this.issuer,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientKey'] = clientKey;
    map['issuer'] = issuer;
    map['subject'] = subject;
    return map;
  }

  factory CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig(
      clientKey: map['clientKey'] as String,
      issuer: map['issuer'] as String,
      subject: map['subject'] as String,
    );
  }
}
