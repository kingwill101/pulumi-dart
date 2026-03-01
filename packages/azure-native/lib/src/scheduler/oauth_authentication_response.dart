// ignore_for_file: unused_element, unnecessary_cast


class OAuthAuthenticationResponse {
  /// Gets or sets the audience.
  final String? audience;
  /// Gets or sets the client identifier.
  final String? clientId;
  /// Gets or sets the secret, return value will always be empty.
  final String? secret;
  /// Gets or sets the tenant.
  final String? tenant;
  /// Gets or sets the HTTP authentication type.
  /// Expected value is 'ActiveDirectoryOAuth'.
  final String type;

  /// Creates a new [OAuthAuthenticationResponse].
  /// [audience] Gets or sets the audience.
  /// [clientId] Gets or sets the client identifier.
  /// [secret] Gets or sets the secret, return value will always be empty.
  /// [tenant] Gets or sets the tenant.
  /// [type] Gets or sets the HTTP authentication type.
  OAuthAuthenticationResponse({
    this.audience,
    this.clientId,
    this.secret,
    this.tenant,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': ?audience,
      'clientId': ?clientId,
      'secret': ?secret,
      'tenant': ?tenant,
      'type': type,
    };
  }

  factory OAuthAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return OAuthAuthenticationResponse(
      audience: map['audience'] == null ? null : map['audience'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      secret: map['secret'] == null ? null : map['secret'] as String,
      tenant: map['tenant'] == null ? null : map['tenant'] as String,
      type: map['type'] as String,
    );
  }
}

