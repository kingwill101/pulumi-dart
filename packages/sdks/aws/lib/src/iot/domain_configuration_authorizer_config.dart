// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainConfigurationAuthorizerConfig {
  /// A Boolean that specifies whether the domain configuration's authorization service can be overridden.
  final pulumi.Input<bool>? allowAuthorizerOverride;
  /// The name of the authorization service for a domain configuration.
  final pulumi.Input<String>? defaultAuthorizerName;

  /// Creates a new [DomainConfigurationAuthorizerConfig].
  /// [allowAuthorizerOverride] A Boolean that specifies whether the domain configuration's authorization service can be overridden.
  /// [defaultAuthorizerName] The name of the authorization service for a domain configuration.
  DomainConfigurationAuthorizerConfig({
    this.allowAuthorizerOverride,
    this.defaultAuthorizerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowAuthorizerOverride': ?allowAuthorizerOverride,
      'defaultAuthorizerName': ?defaultAuthorizerName,
    };
  }

  factory DomainConfigurationAuthorizerConfig.fromMap(Map<String, dynamic> map) {
    return DomainConfigurationAuthorizerConfig(
      allowAuthorizerOverride: (() { final guardedValue = map['allowAuthorizerOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultAuthorizerName: (() { final guardedValue = map['defaultAuthorizerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

