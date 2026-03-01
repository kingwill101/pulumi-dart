// ignore_for_file: unused_element, unnecessary_cast


class DomainConfigurationAuthorizerConfig {
  /// A Boolean that specifies whether the domain configuration's authorization service can be overridden.
  final bool? allowAuthorizerOverride;
  /// The name of the authorization service for a domain configuration.
  final String? defaultAuthorizerName;

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
      allowAuthorizerOverride: map['allowAuthorizerOverride'] == null ? null : map['allowAuthorizerOverride'] as bool,
      defaultAuthorizerName: map['defaultAuthorizerName'] == null ? null : map['defaultAuthorizerName'] as String,
    );
  }
}

