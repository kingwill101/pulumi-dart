// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessSecurityConfigSamlOptions {
  /// Group attribute for this SAML integration.
  final pulumi.Input<String?>? groupAttribute;
  /// XML IdP metadata file generated from your identity provider.
  final pulumi.Input<String> metadata;
  /// Session timeout, in minutes. Minimum is 5 minutes and maximum is 720 minutes (12 hours). Default is 60 minutes.
  final pulumi.Input<int?>? sessionTimeout;
  /// User attribute for this SAML integration.
  final pulumi.Input<String?>? userAttribute;

  /// Creates a new [ServerlessSecurityConfigSamlOptions].
  /// [groupAttribute] Group attribute for this SAML integration.
  /// [metadata] XML IdP metadata file generated from your identity provider.
  /// [sessionTimeout] Session timeout, in minutes. Minimum is 5 minutes and maximum is 720 minutes (12 hours). Default is 60 minutes.
  /// [userAttribute] User attribute for this SAML integration.
  const ServerlessSecurityConfigSamlOptions({
    this.groupAttribute,
    required this.metadata,
    this.sessionTimeout,
    this.userAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttribute': ?groupAttribute,
      'metadata': metadata,
      'sessionTimeout': ?sessionTimeout,
      'userAttribute': ?userAttribute,
    };
  }

  factory ServerlessSecurityConfigSamlOptions.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityConfigSamlOptions(
      groupAttribute: (() { final guardedValue = map['groupAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: pulumi.Input.fromValue(map['metadata'] as String),
      sessionTimeout: (() { final guardedValue = map['sessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      userAttribute: (() { final guardedValue = map['userAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
