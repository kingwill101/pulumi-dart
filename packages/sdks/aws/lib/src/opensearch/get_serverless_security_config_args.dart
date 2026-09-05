// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_security_config_iam_federation_option.dart';
import 'get_serverless_security_config_iam_identity_center_option.dart';
import 'get_serverless_security_config_saml_option.dart';

/// {@template pulumi_opensearch_get_serverless_security_config_get_serverless_security_config_args_doc}
/// Arguments for getServerlessSecurityConfig.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_serverless_security_config_get_serverless_security_config_args_doc}
class GetServerlessSecurityConfigArgs {
  /// IAM Federation options for the security configuration.
  final pulumi.Input<List<GetServerlessSecurityConfigIamFederationOption>?>? iamFederationOptions;
  /// IAM Identity Center options for the security configuration.
  final pulumi.Input<List<GetServerlessSecurityConfigIamIdentityCenterOption>?>? iamIdentityCenterOptions;
  /// Unique identifier of the security configuration.
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// SAML options for the security configuration.
  final pulumi.Input<List<GetServerlessSecurityConfigSamlOption>?>? samlOptions;

  /// Creates a new [GetServerlessSecurityConfigArgs].
  /// [iamFederationOptions] IAM Federation options for the security configuration.
  /// [iamIdentityCenterOptions] IAM Identity Center options for the security configuration.
  /// [id] Unique identifier of the security configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [samlOptions] SAML options for the security configuration.
  const GetServerlessSecurityConfigArgs({
    this.iamFederationOptions,
    this.iamIdentityCenterOptions,
    required this.id,
    this.region,
    this.samlOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamFederationOptions': ?pulumi.Input.mapOptionalInputValue<List<GetServerlessSecurityConfigIamFederationOption>, List<Map<String, dynamic>>>(iamFederationOptions, (value) => pulumi.Input.encodeList<GetServerlessSecurityConfigIamFederationOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'iamIdentityCenterOptions': ?pulumi.Input.mapOptionalInputValue<List<GetServerlessSecurityConfigIamIdentityCenterOption>, List<Map<String, dynamic>>>(iamIdentityCenterOptions, (value) => pulumi.Input.encodeList<GetServerlessSecurityConfigIamIdentityCenterOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'region': ?region,
      'samlOptions': ?pulumi.Input.mapOptionalInputValue<List<GetServerlessSecurityConfigSamlOption>, List<Map<String, dynamic>>>(samlOptions, (value) => pulumi.Input.encodeList<GetServerlessSecurityConfigSamlOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServerlessSecurityConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityConfigArgs(
      iamFederationOptions: (() { final guardedValue = map['iamFederationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetServerlessSecurityConfigIamFederationOption>(guardedValue, (value) => GetServerlessSecurityConfigIamFederationOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      iamIdentityCenterOptions: (() { final guardedValue = map['iamIdentityCenterOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetServerlessSecurityConfigIamIdentityCenterOption>(guardedValue, (value) => GetServerlessSecurityConfigIamIdentityCenterOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlOptions: (() { final guardedValue = map['samlOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetServerlessSecurityConfigSamlOption>(guardedValue, (value) => GetServerlessSecurityConfigSamlOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
