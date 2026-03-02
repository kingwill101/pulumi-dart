// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FSxAuthorizationConfig
class FSxAuthorizationConfig {
  /// Property credentialsParameter
  final pulumi.Input<String>? credentialsParameter;
  /// Property domain
  final pulumi.Input<String>? domain;

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
      credentialsParameter: map['credentialsParameter'] == null ? null : (map['credentialsParameter'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
    );
  }
}

