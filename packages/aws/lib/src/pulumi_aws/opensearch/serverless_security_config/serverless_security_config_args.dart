// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../serverless_security_config_saml_options/serverless_security_config_saml_options.dart';

/// The set of arguments for ServerlessSecurityConfig.
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

  ServerlessSecurityConfigArgs({
    this.description,
    this.name,
    this.region,
    this.samlOptions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final samlOptionsValue = samlOptions;
    if (samlOptionsValue != null) {
      map['samlOptions'] = pulumi.Input.mapOptionalInputValue<
          ServerlessSecurityConfigSamlOptions,
          Map<String, dynamic>>(samlOptionsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory ServerlessSecurityConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityConfigArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      samlOptions:
          pulumi.Input.asOptionalInput<ServerlessSecurityConfigSamlOptions>(
              map['samlOptions']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
