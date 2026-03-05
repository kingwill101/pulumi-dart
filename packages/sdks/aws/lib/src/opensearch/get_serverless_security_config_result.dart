// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_security_config_saml_option.dart';

/// Result data returned by getServerlessSecurityConfig.
class GetServerlessSecurityConfigResult {
  /// The version of the security configuration.
  final String configVersion;
  /// The date the configuration was created.
  final String createdDate;
  /// The description of the security configuration.
  final String description;
  final String id;
  /// The date the configuration was last modified.
  final String lastModifiedDate;
  final String region;
  /// SAML options for the security configuration.
  final List<GetServerlessSecurityConfigSamlOption>? samlOptions;
  /// The type of security configuration.
  final String type;

  /// Creates a new [GetServerlessSecurityConfigResult].
  /// [configVersion] The version of the security configuration.
  /// [createdDate] The date the configuration was created.
  /// [description] The description of the security configuration.
  /// [id] Required.
  /// [lastModifiedDate] The date the configuration was last modified.
  /// [region] Required.
  /// [samlOptions] SAML options for the security configuration.
  /// [type] The type of security configuration.
  GetServerlessSecurityConfigResult({
    required this.configVersion,
    required this.createdDate,
    required this.description,
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
      id: map['id'] as String,
      lastModifiedDate: map['lastModifiedDate'] as String,
      region: map['region'] as String,
      samlOptions: (() { final guardedValue = map['samlOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessSecurityConfigSamlOption>(guardedValue, (value) => GetServerlessSecurityConfigSamlOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
    );
  }
}

