// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_config_iam_federation_options.dart';
import 'serverless_security_config_iam_identity_center_options.dart';
import 'serverless_security_config_saml_options.dart';

/// {@template pulumi_opensearch_serverless_security_config_serverless_security_config_args_doc}
/// The set of arguments for ServerlessSecurityConfig.
/// {@endtemplate}
/// {@macro pulumi_opensearch_serverless_security_config_serverless_security_config_args_doc}
class ServerlessSecurityConfigArgs {
  /// Description of the security configuration.
  final pulumi.Input<String?>? description;
  /// Configuration block for IAM Federation options. Required if `type` is set to `iamfederation`. See `iamFederationOptions` Block below for details.
  final pulumi.Input<ServerlessSecurityConfigIamFederationOptions?>? iamFederationOptions;
  /// Configuration block for IAM Identity Center options. Required if `type` is set to `iamidentitycenter`. See `iamIdentityCenterOptions` Block below for details.
  final pulumi.Input<ServerlessSecurityConfigIamIdentityCenterOptions?>? iamIdentityCenterOptions;
  /// Name of the policy.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block for SAML options. Required if `type` is set to `saml`. See `samlOptions` Block below for details.
  final pulumi.Input<ServerlessSecurityConfigSamlOptions?>? samlOptions;
  /// Type of configuration. Valid values are `saml`, `iamidentitycenter` and `iamfederation`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [ServerlessSecurityConfigArgs].
  /// [description] Description of the security configuration.
  /// [iamFederationOptions] Configuration block for IAM Federation options. Required if `type` is set to `iamfederation`. See `iamFederationOptions` Block below for details.
  /// [iamIdentityCenterOptions] Configuration block for IAM Identity Center options. Required if `type` is set to `iamidentitycenter`. See `iamIdentityCenterOptions` Block below for details.
  /// [name] Name of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] Configuration block for SAML options. Required if `type` is set to `saml`. See `samlOptions` Block below for details.
  /// [type] Type of configuration. Valid values are `saml`, `iamidentitycenter` and `iamfederation`.
  const ServerlessSecurityConfigArgs({
    this.description,
    this.iamFederationOptions,
    this.iamIdentityCenterOptions,
    this.name,
    this.region,
    this.samlOptions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'iamFederationOptions': ?pulumi.Input.mapOptionalInputValue<ServerlessSecurityConfigIamFederationOptions, Map<String, dynamic>>(iamFederationOptions, (value) => value.toMap()),
      'iamIdentityCenterOptions': ?pulumi.Input.mapOptionalInputValue<ServerlessSecurityConfigIamIdentityCenterOptions, Map<String, dynamic>>(iamIdentityCenterOptions, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<ServerlessSecurityConfigSamlOptions, Map<String, dynamic>>(samlOptions, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ServerlessSecurityConfigArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityConfigArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamFederationOptions: (() { final guardedValue = map['iamFederationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessSecurityConfigIamFederationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iamIdentityCenterOptions: (() { final guardedValue = map['iamIdentityCenterOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessSecurityConfigIamIdentityCenterOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlOptions: (() { final guardedValue = map['samlOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessSecurityConfigSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
