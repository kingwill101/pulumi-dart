// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_security_config_saml_option.dart';

/// {@template pulumi_opensearch_get_serverless_security_config_get_serverless_security_config_args_doc}
/// Arguments for getServerlessSecurityConfig.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_security_config_get_serverless_security_config_args_doc}
class GetServerlessSecurityConfigArgs {
  /// The unique identifier of the security configuration.
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// SAML options for the security configuration.
  final pulumi.Input<List<GetServerlessSecurityConfigSamlOption>>? samlOptions;

  /// Creates a new [GetServerlessSecurityConfigArgs].
  /// [id] The unique identifier of the security configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] SAML options for the security configuration.
  GetServerlessSecurityConfigArgs({
    required this.id,
    this.region,
    this.samlOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<List<GetServerlessSecurityConfigSamlOption>, List<Map<String, dynamic>>>(samlOptions, (value) => pulumi.Input.encodeList<GetServerlessSecurityConfigSamlOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServerlessSecurityConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityConfigArgs(
      id: (map['id'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      samlOptions: map['samlOptions'] == null ? null : (pulumi.Input.decodeList<GetServerlessSecurityConfigSamlOption>(map['samlOptions'], (value) => GetServerlessSecurityConfigSamlOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

