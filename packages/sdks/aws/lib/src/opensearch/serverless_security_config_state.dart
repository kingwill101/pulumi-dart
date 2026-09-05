// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_security_config_iam_federation_options.dart';
import 'serverless_security_config_iam_identity_center_options.dart';
import 'serverless_security_config_saml_options.dart';

/// Input properties used for looking up and filtering ServerlessSecurityConfig resources.
class ServerlessSecurityConfigState {
  /// Version of the configuration.
  final pulumi.Input<String?>? configVersion;
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
  final pulumi.Input<String?>? type;

  /// Creates a new [ServerlessSecurityConfigState].
  /// [configVersion] Version of the configuration.
  /// [description] Description of the security configuration.
  /// [iamFederationOptions] Configuration block for IAM Federation options. Required if `type` is set to `iamfederation`. See `iamFederationOptions` Block below for details.
  /// [iamIdentityCenterOptions] Configuration block for IAM Identity Center options. Required if `type` is set to `iamidentitycenter`. See `iamIdentityCenterOptions` Block below for details.
  /// [name] Name of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] Configuration block for SAML options. Required if `type` is set to `saml`. See `samlOptions` Block below for details.
  /// [type] Type of configuration. Valid values are `saml`, `iamidentitycenter` and `iamfederation`.
  const ServerlessSecurityConfigState({
    this.configVersion,
    this.description,
    this.iamFederationOptions,
    this.iamIdentityCenterOptions,
    this.name,
    this.region,
    this.samlOptions,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configVersion': ?configVersion,
      'description': ?description,
      'iamFederationOptions': ?pulumi.Input.mapOptionalInputValue<ServerlessSecurityConfigIamFederationOptions, Map<String, dynamic>>(iamFederationOptions, (value) => value.toMap()),
      'iamIdentityCenterOptions': ?pulumi.Input.mapOptionalInputValue<ServerlessSecurityConfigIamIdentityCenterOptions, Map<String, dynamic>>(iamIdentityCenterOptions, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<ServerlessSecurityConfigSamlOptions, Map<String, dynamic>>(samlOptions, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ServerlessSecurityConfigState.fromMap(Map<String, dynamic> map) {
    return ServerlessSecurityConfigState(
      configVersion: (() { final guardedValue = map['configVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamFederationOptions: (() { final guardedValue = map['iamFederationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessSecurityConfigIamFederationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iamIdentityCenterOptions: (() { final guardedValue = map['iamIdentityCenterOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessSecurityConfigIamIdentityCenterOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlOptions: (() { final guardedValue = map['samlOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerlessSecurityConfigSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
