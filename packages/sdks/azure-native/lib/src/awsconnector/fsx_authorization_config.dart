// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FSxAuthorizationConfig
class FSxAuthorizationConfig {
  /// Property credentialsParameter
  final String? credentialsParameter;
  /// Property domain
  final String? domain;

  /// Creates a new [FSxAuthorizationConfig].
  /// [credentialsParameter] Property credentialsParameter
  /// [domain] Property domain
  FSxAuthorizationConfig({
    this.credentialsParameter,
    this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': ?credentialsParameter,
      'domain': ?domain,
    };
  }

  factory FSxAuthorizationConfig.fromMap(Map<String, dynamic> map) {
    return FSxAuthorizationConfig(
      credentialsParameter: map['credentialsParameter'] == null ? null : map['credentialsParameter'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
    );
  }
}

