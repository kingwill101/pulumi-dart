// ignore_for_file: unused_element, unnecessary_cast


class GetVpnServerConfigurationAzureActiveDirectoryAuthentication {
  /// The Audience which should be used for authentication.
  final String audience;
  /// The Issuer which should be used for authentication.
  final String issuer;
  /// The Tenant which should be used for authentication.
  final String tenant;

  /// Creates a new [GetVpnServerConfigurationAzureActiveDirectoryAuthentication].
  /// [audience] The Audience which should be used for authentication.
  /// [issuer] The Issuer which should be used for authentication.
  /// [tenant] The Tenant which should be used for authentication.
  GetVpnServerConfigurationAzureActiveDirectoryAuthentication({
    required this.audience,
    required this.issuer,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'issuer': issuer,
      'tenant': tenant,
    };
  }

  factory GetVpnServerConfigurationAzureActiveDirectoryAuthentication.fromMap(Map<String, dynamic> map) {
    return GetVpnServerConfigurationAzureActiveDirectoryAuthentication(
      audience: map['audience'] as String,
      issuer: map['issuer'] as String,
      tenant: map['tenant'] as String,
    );
  }
}

