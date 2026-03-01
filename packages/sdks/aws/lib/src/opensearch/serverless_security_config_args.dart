// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_config_saml_options.dart';

/// {@template pulumi_opensearch_serverless_security_config_serverless_security_config_args_doc}
/// The set of arguments for ServerlessSecurityConfig.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_security_config_serverless_security_config_args_doc}
class ServerlessSecurityConfigArgs {
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
  final pulumi.Input<String> type;

  /// Creates a new [ServerlessSecurityConfigArgs].
  /// [description] Description of the security configuration.
  /// [name] Name of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] Configuration block for SAML options.
  /// [type] Type of configuration. Must be `saml`.
  ServerlessSecurityConfigArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<ServerlessSecurityConfigSamlOptions>? samlOptions,
    required pulumi.Output<String> type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      samlOptions = pulumi.Input.asOptionalInput<ServerlessSecurityConfigSamlOptions>(samlOptions),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<ServerlessSecurityConfigSamlOptions, Map<String, dynamic>>(samlOptions, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ServerlessSecurityConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityConfigArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      samlOptions: map['samlOptions'] == null ? null : pulumi.Output.create<ServerlessSecurityConfigSamlOptions>(ServerlessSecurityConfigSamlOptions.fromMap((map['samlOptions'] as Map).cast<String, dynamic>())),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

