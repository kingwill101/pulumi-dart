// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FSxAuthorizationConfig
class FSxAuthorizationConfigResponse {
  /// Property credentialsParameter
  final pulumi.Input<String>? credentialsParameter;
  /// Property domain
  final pulumi.Input<String>? domain;

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
      credentialsParameter: map['credentialsParameter'] == null ? null : (map['credentialsParameter']! as String).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
    );
  }
}

