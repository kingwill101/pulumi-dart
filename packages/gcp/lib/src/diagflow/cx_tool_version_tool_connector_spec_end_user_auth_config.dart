// ignore_for_file: unused_element, unnecessary_cast

import 'cx_tool_version_tool_connector_spec_end_user_auth_config_oauth2_auth_code_config.dart';
import 'cx_tool_version_tool_connector_spec_end_user_auth_config_oauth2_jwt_bearer_config.dart';

class CxToolVersionToolConnectorSpecEndUserAuthConfig {
  /// Oauth 2.0 Authorization Code authentication. This field is part of a union field `end_user_auth_config`. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  /// Structure is documented below.
  final CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig?
  oauth2AuthCodeConfig;

  /// JWT Profile Oauth 2.0 Authorization Grant authentication.. This field is part of a union field `end_user_auth_config`. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_tool_connector_spec_end_user_auth_config_oauth2_auth_code_config"></a>The `oauth2_auth_code_config` block supports:
  final CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig?
  oauth2JwtBearerConfig;

  /// Creates a new [CxToolVersionToolConnectorSpecEndUserAuthConfig].
  /// [oauth2AuthCodeConfig] Oauth 2.0 Authorization Code authentication. This field is part of a union field `end_user_auth_config`. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  /// [oauth2JwtBearerConfig] JWT Profile Oauth 2.0 Authorization Grant authentication.. This field is part of a union field `end_user_auth_config`. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  CxToolVersionToolConnectorSpecEndUserAuthConfig({
    this.oauth2AuthCodeConfig,
    this.oauth2JwtBearerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauth2AuthCodeConfig': ?oauth2AuthCodeConfig == null
          ? null
          : oauth2AuthCodeConfig!.toMap(),
      'oauth2JwtBearerConfig': ?oauth2JwtBearerConfig == null
          ? null
          : oauth2JwtBearerConfig!.toMap(),
    };
  }

  factory CxToolVersionToolConnectorSpecEndUserAuthConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolVersionToolConnectorSpecEndUserAuthConfig(
      oauth2AuthCodeConfig: map['oauth2AuthCodeConfig'] == null
          ? null
          : CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig.fromMap(
              (map['oauth2AuthCodeConfig'] as Map).cast<String, dynamic>(),
            ),
      oauth2JwtBearerConfig: map['oauth2JwtBearerConfig'] == null
          ? null
          : CxToolVersionToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig.fromMap(
              (map['oauth2JwtBearerConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
