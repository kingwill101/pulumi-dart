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
    this.description,
    this.name,
    this.region,
    this.samlOptions,
    required this.type,
  });

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
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      samlOptions: map['samlOptions'] == null ? null : ((ServerlessSecurityConfigSamlOptions.fromMap((map['samlOptions']! as Map).cast<String, dynamic>())).input()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

