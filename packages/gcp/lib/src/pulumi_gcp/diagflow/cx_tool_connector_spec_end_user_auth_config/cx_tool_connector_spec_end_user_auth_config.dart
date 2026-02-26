// ignore_for_file: unused_element, unnecessary_cast

import '../cx_tool_connector_spec_end_user_auth_config_oauth2_auth_code_config/cx_tool_connector_spec_end_user_auth_config_oauth2_auth_code_config.dart';
import '../cx_tool_connector_spec_end_user_auth_config_oauth2_jwt_bearer_config/cx_tool_connector_spec_end_user_auth_config_oauth2_jwt_bearer_config.dart';

class CxToolConnectorSpecEndUserAuthConfig {
  /// Oauth 2.0 Authorization Code authentication. This field is part of a union field <span pulumi-lang-nodejs="`endUserAuthConfig`" pulumi-lang-dotnet="`EndUserAuthConfig`" pulumi-lang-go="`endUserAuthConfig`" pulumi-lang-python="`end_user_auth_config`" pulumi-lang-yaml="`endUserAuthConfig`" pulumi-lang-java="`endUserAuthConfig`">`end_user_auth_config`</span>. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  /// Structure is documented below.
  final CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig?
      oauth2AuthCodeConfig;

  /// JWT Profile Oauth 2.0 Authorization Grant authentication.. This field is part of a union field <span pulumi-lang-nodejs="`endUserAuthConfig`" pulumi-lang-dotnet="`EndUserAuthConfig`" pulumi-lang-go="`endUserAuthConfig`" pulumi-lang-python="`end_user_auth_config`" pulumi-lang-yaml="`endUserAuthConfig`" pulumi-lang-java="`endUserAuthConfig`">`end_user_auth_config`</span>. Only one of `oauth2AuthCodeConfig` or `oauth2JwtBearerConfig` may be set.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig"" pulumi-lang-dotnet=""NestedConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig"" pulumi-lang-go=""nestedConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig"" pulumi-lang-python=""nested_connector_spec_end_user_auth_config_oauth2_auth_code_config"" pulumi-lang-yaml=""nestedConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig"" pulumi-lang-java=""nestedConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig"">"nested_connector_spec_end_user_auth_config_oauth2_auth_code_config"</span>></a>The <span pulumi-lang-nodejs="`oauth2AuthCodeConfig`" pulumi-lang-dotnet="`Oauth2AuthCodeConfig`" pulumi-lang-go="`oauth2AuthCodeConfig`" pulumi-lang-python="`oauth2_auth_code_config`" pulumi-lang-yaml="`oauth2AuthCodeConfig`" pulumi-lang-java="`oauth2AuthCodeConfig`">`oauth2_auth_code_config`</span> block supports:
  final CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig?
      oauth2JwtBearerConfig;

  CxToolConnectorSpecEndUserAuthConfig({
    this.oauth2AuthCodeConfig,
    this.oauth2JwtBearerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oauth2AuthCodeConfigValue = oauth2AuthCodeConfig;
    if (oauth2AuthCodeConfigValue != null) {
      map['oauth2AuthCodeConfig'] = oauth2AuthCodeConfigValue.toMap();
    }
    final oauth2JwtBearerConfigValue = oauth2JwtBearerConfig;
    if (oauth2JwtBearerConfigValue != null) {
      map['oauth2JwtBearerConfig'] = oauth2JwtBearerConfigValue.toMap();
    }
    return map;
  }

  factory CxToolConnectorSpecEndUserAuthConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolConnectorSpecEndUserAuthConfig(
      oauth2AuthCodeConfig: map['oauth2AuthCodeConfig'] == null
          ? null
          : CxToolConnectorSpecEndUserAuthConfigOauth2AuthCodeConfig.fromMap(
              (map['oauth2AuthCodeConfig'] as Map).cast<String, dynamic>()),
      oauth2JwtBearerConfig: map['oauth2JwtBearerConfig'] == null
          ? null
          : CxToolConnectorSpecEndUserAuthConfigOauth2JwtBearerConfig.fromMap(
              (map['oauth2JwtBearerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
