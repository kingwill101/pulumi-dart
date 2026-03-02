// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_config_saml_options.dart';

/// Input properties used for looking up and filtering ServerlessSecurityConfig resources.
class ServerlessSecurityConfigState {
  /// Version of the configuration.
  final pulumi.Input<String>? configVersion;
  /// Description of the security configuration.
  final pulumi.Input<String>? description;
  /// Name of the policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for SAML options.
  final pulumi.Input<ServerlessSecurityConfigSamlOptions>? samlOptions;
  /// Type of configuration. Must be `saml`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;

  /// Creates a new [ServerlessSecurityConfigState].
  /// [configVersion] Version of the configuration.
  /// [description] Description of the security configuration.
  /// [name] Name of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] Configuration block for SAML options.
  /// [type] Type of configuration. Must be `saml`.
  ServerlessSecurityConfigState({
    this.configVersion,
    this.description,
    this.name,
    this.region,
    this.samlOptions,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configVersion': ?configVersion,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<ServerlessSecurityConfigSamlOptions, Map<String, dynamic>>(samlOptions, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ServerlessSecurityConfigState.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityConfigState(
      configVersion: map['configVersion'] == null ? null : (map['configVersion'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      samlOptions: map['samlOptions'] == null ? null : (ServerlessSecurityConfigSamlOptions.fromMap((map['samlOptions'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

