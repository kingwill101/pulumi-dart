// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FSxAuthorizationConfig
class FSxAuthorizationConfigResponse {
  /// Property credentialsParameter
  final pulumi.Input<String?>? credentialsParameter;
  /// Property domain
  final pulumi.Input<String?>? domain;

  /// Creates a new [FSxAuthorizationConfigResponse].
  /// [credentialsParameter] Property credentialsParameter
  /// [domain] Property domain
  const FSxAuthorizationConfigResponse({
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
      credentialsParameter: (() { final guardedValue = map['credentialsParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
