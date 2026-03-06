// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3CustomDomainAuthConfig {
  /// Authentication Information
  final pulumi.Input<String>? authInfo;
  /// Authentication type. anonymous, function, or jwt.
  final pulumi.Input<String>? authType;

  /// Creates a new [V3CustomDomainAuthConfig].
  /// [authInfo] Authentication Information
  /// [authType] Authentication type. anonymous, function, or jwt.
  const V3CustomDomainAuthConfig({
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
      authInfo: (() { final guardedValue = map['authInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

