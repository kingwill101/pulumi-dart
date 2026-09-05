// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_security_config_iam_federation_option.dart';
import 'get_serverless_security_config_iam_identity_center_option.dart';
import 'get_serverless_security_config_saml_option.dart';

/// Result data returned by getServerlessSecurityConfig.
class GetServerlessSecurityConfigResult {
  /// Version of the security configuration.
  final String? configVersion;
  /// Date the configuration was created.
  final String? createdDate;
  /// Description of the security configuration.
  final String? description;
  /// IAM Federation options for the security configuration.
  final List<GetServerlessSecurityConfigIamFederationOption>? iamFederationOptions;
  /// IAM Identity Center options for the security configuration.
  final List<GetServerlessSecurityConfigIamIdentityCenterOption>? iamIdentityCenterOptions;
  final String? id;
  /// Date the configuration was last modified.
  final String? lastModifiedDate;
  final String? region;
  /// SAML options for the security configuration.
  final List<GetServerlessSecurityConfigSamlOption>? samlOptions;
  /// Type of security configuration.
  final String? type;

  /// Creates a new [GetServerlessSecurityConfigResult].
  /// [configVersion] Version of the security configuration.
  /// [createdDate] Date the configuration was created.
  /// [description] Description of the security configuration.
  /// [iamFederationOptions] IAM Federation options for the security configuration.
  /// [iamIdentityCenterOptions] IAM Identity Center options for the security configuration.
  /// [id] Optional.
  /// [lastModifiedDate] Date the configuration was last modified.
  /// [region] Optional.
  /// [samlOptions] SAML options for the security configuration.
  /// [type] Type of security configuration.
  const GetServerlessSecurityConfigResult({
    this.configVersion,
    this.createdDate,
    this.description,
    this.iamFederationOptions,
    this.iamIdentityCenterOptions,
    this.id,
    this.lastModifiedDate,
    this.region,
    this.samlOptions,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configVersion': ?configVersion,
      'createdDate': ?createdDate,
      'description': ?description,
      'iamFederationOptions': ?(() { final guardedValue = iamFederationOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerlessSecurityConfigIamFederationOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'iamIdentityCenterOptions': ?(() { final guardedValue = iamIdentityCenterOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerlessSecurityConfigIamIdentityCenterOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'lastModifiedDate': ?lastModifiedDate,
      'region': ?region,
      'samlOptions': ?(() { final guardedValue = samlOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerlessSecurityConfigSamlOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
    };
  }

  factory GetServerlessSecurityConfigResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityConfigResult(
      configVersion: (() { final guardedValue = map['configVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iamFederationOptions: (() { final guardedValue = map['iamFederationOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessSecurityConfigIamFederationOption>(guardedValue, (value) => GetServerlessSecurityConfigIamFederationOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      iamIdentityCenterOptions: (() { final guardedValue = map['iamIdentityCenterOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessSecurityConfigIamIdentityCenterOption>(guardedValue, (value) => GetServerlessSecurityConfigIamIdentityCenterOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      samlOptions: (() { final guardedValue = map['samlOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessSecurityConfigSamlOption>(guardedValue, (value) => GetServerlessSecurityConfigSamlOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
