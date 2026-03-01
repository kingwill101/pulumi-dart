// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_url_path_map_path_rule.dart';

class ApplicationGatewayUrlPathMap {
  /// The ID of the Default Backend Address Pool.
  final String? defaultBackendAddressPoolId;
  /// The Name of the Default Backend Address Pool which should be used for this URL Path Map. Cannot be set if `default_redirect_configuration_name` is set.
  final String? defaultBackendAddressPoolName;
  /// The ID of the Default Backend HTTP Settings Collection.
  final String? defaultBackendHttpSettingsId;
  /// The Name of the Default Backend HTTP Settings Collection which should be used for this URL Path Map. Cannot be set if `default_redirect_configuration_name` is set.
  final String? defaultBackendHttpSettingsName;
  /// The ID of the Default Redirect Configuration.
  final String? defaultRedirectConfigurationId;
  /// The Name of the Default Redirect Configuration which should be used for this URL Path Map. Cannot be set if either `default_backend_address_pool_name` or `default_backend_http_settings_name` is set.
  ///
  /// > **Note:** Both `default_backend_address_pool_name` and `default_backend_http_settings_name` or `default_redirect_configuration_name` should be specified.
  final String? defaultRedirectConfigurationName;
  final String? defaultRewriteRuleSetId;
  /// The Name of the Default Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
  final String? defaultRewriteRuleSetName;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The Name of the URL Path Map.
  final String name;
  /// One or more `path_rule` blocks as defined above.
  final List<ApplicationGatewayUrlPathMapPathRule> pathRules;

  /// Creates a new [ApplicationGatewayUrlPathMap].
  /// [defaultBackendAddressPoolId] The ID of the Default Backend Address Pool.
  /// [defaultBackendAddressPoolName] The Name of the Default Backend Address Pool which should be used for this URL Path Map. Cannot be set if `default_redirect_configuration_name` is set.
  /// [defaultBackendHttpSettingsId] The ID of the Default Backend HTTP Settings Collection.
  /// [defaultBackendHttpSettingsName] The Name of the Default Backend HTTP Settings Collection which should be used for this URL Path Map. Cannot be set if `default_redirect_configuration_name` is set.
  /// [defaultRedirectConfigurationId] The ID of the Default Redirect Configuration.
  /// [defaultRedirectConfigurationName] The Name of the Default Redirect Configuration which should be used for this URL Path Map. Cannot be set if either `default_backend_address_pool_name` or `default_backend_http_settings_name` is set.
  /// [defaultRewriteRuleSetId] Optional.
  /// [defaultRewriteRuleSetName] The Name of the Default Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the URL Path Map.
  /// [pathRules] One or more `path_rule` blocks as defined above.
  ApplicationGatewayUrlPathMap({
    this.defaultBackendAddressPoolId,
    this.defaultBackendAddressPoolName,
    this.defaultBackendHttpSettingsId,
    this.defaultBackendHttpSettingsName,
    this.defaultRedirectConfigurationId,
    this.defaultRedirectConfigurationName,
    this.defaultRewriteRuleSetId,
    this.defaultRewriteRuleSetName,
    this.id,
    required this.name,
    required this.pathRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBackendAddressPoolId': ?defaultBackendAddressPoolId,
      'defaultBackendAddressPoolName': ?defaultBackendAddressPoolName,
      'defaultBackendHttpSettingsId': ?defaultBackendHttpSettingsId,
      'defaultBackendHttpSettingsName': ?defaultBackendHttpSettingsName,
      'defaultRedirectConfigurationId': ?defaultRedirectConfigurationId,
      'defaultRedirectConfigurationName': ?defaultRedirectConfigurationName,
      'defaultRewriteRuleSetId': ?defaultRewriteRuleSetId,
      'defaultRewriteRuleSetName': ?defaultRewriteRuleSetName,
      'id': ?id,
      'name': name,
      'pathRules': pulumi.Input.encodeList<ApplicationGatewayUrlPathMapPathRule, Map<String, dynamic>>(pathRules, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayUrlPathMap.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayUrlPathMap(
      defaultBackendAddressPoolId: map['defaultBackendAddressPoolId'] == null ? null : map['defaultBackendAddressPoolId'] as String,
      defaultBackendAddressPoolName: map['defaultBackendAddressPoolName'] == null ? null : map['defaultBackendAddressPoolName'] as String,
      defaultBackendHttpSettingsId: map['defaultBackendHttpSettingsId'] == null ? null : map['defaultBackendHttpSettingsId'] as String,
      defaultBackendHttpSettingsName: map['defaultBackendHttpSettingsName'] == null ? null : map['defaultBackendHttpSettingsName'] as String,
      defaultRedirectConfigurationId: map['defaultRedirectConfigurationId'] == null ? null : map['defaultRedirectConfigurationId'] as String,
      defaultRedirectConfigurationName: map['defaultRedirectConfigurationName'] == null ? null : map['defaultRedirectConfigurationName'] as String,
      defaultRewriteRuleSetId: map['defaultRewriteRuleSetId'] == null ? null : map['defaultRewriteRuleSetId'] as String,
      defaultRewriteRuleSetName: map['defaultRewriteRuleSetName'] == null ? null : map['defaultRewriteRuleSetName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      pathRules: pulumi.Input.decodeList<ApplicationGatewayUrlPathMapPathRule>(map['pathRules'], (value) => ApplicationGatewayUrlPathMapPathRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

