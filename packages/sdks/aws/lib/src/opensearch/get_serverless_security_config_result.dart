// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_security_config_iam_federation_option.dart';
import 'get_serverless_security_config_iam_identity_center_option.dart';
import 'get_serverless_security_config_saml_option.dart';

/// Result data returned by getServerlessSecurityConfig.
class GetServerlessSecurityConfigResult {
  /// Version of the security configuration.
  final String configVersion;
  /// Date the configuration was created.
  final String createdDate;
  /// Description of the security configuration.
  final String description;
  /// IAM Federation options for the security configuration.
  final List<GetServerlessSecurityConfigIamFederationOption>? iamFederationOptions;
  /// IAM Identity Center options for the security configuration.
  final List<GetServerlessSecurityConfigIamIdentityCenterOption>? iamIdentityCenterOptions;
  final String id;
  /// Date the configuration was last modified.
  final String lastModifiedDate;
  final String region;
  /// SAML options for the security configuration.
  final List<GetServerlessSecurityConfigSamlOption>? samlOptions;
  /// Type of security configuration.
  final String type;

  /// Creates a new [GetServerlessSecurityConfigResult].
  /// [configVersion] Version of the security configuration.
  /// [createdDate] Date the configuration was created.
  /// [description] Description of the security configuration.
  /// [iamFederationOptions] IAM Federation options for the security configuration.
  /// [iamIdentityCenterOptions] IAM Identity Center options for the security configuration.
  /// [id] Required.
  /// [lastModifiedDate] Date the configuration was last modified.
  /// [region] Required.
  /// [samlOptions] SAML options for the security configuration.
  /// [type] Type of security configuration.
  const GetServerlessSecurityConfigResult({
    required this.configVersion,
    required this.createdDate,
    required this.description,
    this.iamFederationOptions,
    this.iamIdentityCenterOptions,
    required this.id,
    required this.lastModifiedDate,
    required this.region,
    this.samlOptions,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configVersion': configVersion,
      'createdDate': createdDate,
      'description': description,
      'iamFederationOptions': ?(() { final guardedValue = iamFederationOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerlessSecurityConfigIamFederationOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'iamIdentityCenterOptions': ?(() { final guardedValue = iamIdentityCenterOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerlessSecurityConfigIamIdentityCenterOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'lastModifiedDate': lastModifiedDate,
      'region': region,
      'samlOptions': ?(() { final guardedValue = samlOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerlessSecurityConfigSamlOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
    };
  }

  factory GetServerlessSecurityConfigResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityConfigResult(
      configVersion: map['configVersion'] as String,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      iamFederationOptions: (() { final guardedValue = map['iamFederationOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessSecurityConfigIamFederationOption>(guardedValue, (value) => GetServerlessSecurityConfigIamFederationOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      iamIdentityCenterOptions: (() { final guardedValue = map['iamIdentityCenterOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessSecurityConfigIamIdentityCenterOption>(guardedValue, (value) => GetServerlessSecurityConfigIamIdentityCenterOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      lastModifiedDate: map['lastModifiedDate'] as String,
      region: map['region'] as String,
      samlOptions: (() { final guardedValue = map['samlOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessSecurityConfigSamlOption>(guardedValue, (value) => GetServerlessSecurityConfigSamlOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
    );
  }
}
