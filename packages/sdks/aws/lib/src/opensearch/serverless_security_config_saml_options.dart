// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessSecurityConfigSamlOptions {
  /// Group attribute for this SAML integration.
  final pulumi.Input<String>? groupAttribute;
  /// The XML IdP metadata file generated from your identity provider.
  final pulumi.Input<String> metadata;
  /// Session timeout, in minutes. Minimum is 5 minutes and maximum is 720 minutes (12 hours). Default is 60 minutes.
  final pulumi.Input<int>? sessionTimeout;
  /// User attribute for this SAML integration.
  final pulumi.Input<String>? userAttribute;

  /// Creates a new [ServerlessSecurityConfigSamlOptions].
  /// [groupAttribute] Group attribute for this SAML integration.
  /// [metadata] The XML IdP metadata file generated from your identity provider.
  /// [sessionTimeout] Session timeout, in minutes. Minimum is 5 minutes and maximum is 720 minutes (12 hours). Default is 60 minutes.
  /// [userAttribute] User attribute for this SAML integration.
  ServerlessSecurityConfigSamlOptions({
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
      groupAttribute: map['groupAttribute'] == null ? null : ((map['groupAttribute'] as String).input()).input(),
      metadata: (map['metadata'] as String).input(),
      sessionTimeout: map['sessionTimeout'] == null ? null : ((map['sessionTimeout'] as int).input()).input(),
      userAttribute: map['userAttribute'] == null ? null : ((map['userAttribute'] as String).input()).input(),
    );
  }
}

