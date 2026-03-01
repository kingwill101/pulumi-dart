// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FSxAuthorizationConfig
class FSxAuthorizationConfigResponse {
  /// Property credentialsParameter
  final String? credentialsParameter;
  /// Property domain
  final String? domain;

  /// Creates a new [FSxAuthorizationConfigResponse].
  /// [credentialsParameter] Property credentialsParameter
  /// [domain] Property domain
  FSxAuthorizationConfigResponse({
    this.credentialsParameter,
    this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsParameter': ?credentialsParameter,
      'domain': ?domain,
    };
  }

  factory FSxAuthorizationConfigResponse.fromMap(Map<String, dynamic> map) {
    return FSxAuthorizationConfigResponse(
      credentialsParameter: map['credentialsParameter'] == null ? null : map['credentialsParameter'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
    );
  }
}

