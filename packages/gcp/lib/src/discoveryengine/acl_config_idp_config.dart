// ignore_for_file: unused_element, unnecessary_cast

import 'acl_config_idp_config_external_idp_config.dart';

class AclConfigIdpConfig {
  /// External third party identity provider config.
  /// Structure is documented below.
  final AclConfigIdpConfigExternalIdpConfig? externalIdpConfig;

  /// Identity provider type.
  /// Possible values are: `GSUITE`, `THIRD_PARTY`.
  final String? idpType;

  /// Creates a new [AclConfigIdpConfig].
  /// [externalIdpConfig] External third party identity provider config.
  /// [idpType] Identity provider type.
  AclConfigIdpConfig({this.externalIdpConfig, this.idpType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIdpConfig': ?externalIdpConfig == null
          ? null
          : externalIdpConfig!.toMap(),
      'idpType': ?idpType,
    };
  }

  factory AclConfigIdpConfig.fromMap(Map<String, dynamic> map) {
    return AclConfigIdpConfig(
      externalIdpConfig: map['externalIdpConfig'] == null
          ? null
          : AclConfigIdpConfigExternalIdpConfig.fromMap(
              (map['externalIdpConfig'] as Map).cast<String, dynamic>(),
            ),
      idpType: map['idpType'] == null ? null : map['idpType'] as String,
    );
  }
}
