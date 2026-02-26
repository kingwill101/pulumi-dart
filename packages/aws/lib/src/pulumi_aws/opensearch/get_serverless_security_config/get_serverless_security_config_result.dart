// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_serverless_security_config_saml_option/get_serverless_security_config_saml_option.dart';

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
    final map = <String, dynamic>{};
    map['configVersion'] = configVersion;
    map['createdDate'] = createdDate;
    map['description'] = description;
    map['id'] = id;
    map['lastModifiedDate'] = lastModifiedDate;
    map['region'] = region;
    final samlOptionsValue = samlOptions;
    if (samlOptionsValue != null) {
      map['samlOptions'] = Input.encodeList<
          GetServerlessSecurityConfigSamlOption,
          Map<String, dynamic>>(samlOptionsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory GetServerlessSecurityConfigResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityConfigResult(
      configVersion: map['configVersion'] as String,
      createdDate: map['createdDate'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      lastModifiedDate: map['lastModifiedDate'] as String,
      region: map['region'] as String,
      samlOptions: map['samlOptions'] == null
          ? null
          : Input.decodeList<GetServerlessSecurityConfigSamlOption>(
              map['samlOptions'],
              (value) => GetServerlessSecurityConfigSamlOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
