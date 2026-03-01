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
    pulumi.Output<String>? configVersion,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<ServerlessSecurityConfigSamlOptions>? samlOptions,
    pulumi.Output<String>? type,
  }) :
      configVersion = pulumi.Input.asOptionalInput<String>(configVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      samlOptions = pulumi.Input.asOptionalInput<ServerlessSecurityConfigSamlOptions>(samlOptions),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      configVersion: map['configVersion'] == null ? null : pulumi.Output.create<String>(map['configVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      samlOptions: map['samlOptions'] == null ? null : pulumi.Output.create<ServerlessSecurityConfigSamlOptions>(ServerlessSecurityConfigSamlOptions.fromMap((map['samlOptions'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

