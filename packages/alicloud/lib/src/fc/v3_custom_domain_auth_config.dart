// ignore_for_file: unused_element, unnecessary_cast


class V3CustomDomainAuthConfig {
  /// Authentication Information
  final String? authInfo;
  /// Authentication type. anonymous, function, or jwt.
  final String? authType;

  /// Creates a new [V3CustomDomainAuthConfig].
  /// [authInfo] Authentication Information
  /// [authType] Authentication type. anonymous, function, or jwt.
  V3CustomDomainAuthConfig({
    this.authInfo,
    this.authType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authInfo': ?authInfo,
      'authType': ?authType,
    };
  }

  factory V3CustomDomainAuthConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainAuthConfig(
      authInfo: map['authInfo'] == null ? null : map['authInfo'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
    );
  }
}

