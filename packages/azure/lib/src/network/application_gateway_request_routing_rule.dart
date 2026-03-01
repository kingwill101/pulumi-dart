// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayRequestRoutingRule {
  /// The ID of the associated Backend Address Pool.
  final String? backendAddressPoolId;
  /// The Name of the Backend Address Pool which should be used for this Routing Rule. Cannot be set if `redirect_configuration_name` is set.
  final String? backendAddressPoolName;
  /// The ID of the associated Backend HTTP Settings Configuration.
  final String? backendHttpSettingsId;
  /// The Name of the Backend HTTP Settings Collection which should be used for this Routing Rule. Cannot be set if `redirect_configuration_name` is set.
  final String? backendHttpSettingsName;
  /// The ID of the associated HTTP Listener.
  final String? httpListenerId;
  /// The Name of the HTTP Listener which should be used for this Routing Rule.
  final String httpListenerName;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The Name of this Request Routing Rule.
  final String name;
  /// Rule evaluation order can be dictated by specifying an integer value from `1` to `20000` with `1` being the highest priority and `20000` being the lowest priority.
  ///
  /// > **Note:** `priority` is required when `sku[0].tier` is set to `*_v2`.
  final int? priority;
  /// The ID of the associated Redirect Configuration.
  final String? redirectConfigurationId;
  /// The Name of the Redirect Configuration which should be used for this Routing Rule. Cannot be set if either `backend_address_pool_name` or `backend_http_settings_name` is set.
  final String? redirectConfigurationName;
  /// The ID of the associated Rewrite Rule Set.
  final String? rewriteRuleSetId;
  /// The Name of the Rewrite Rule Set which should be used for this Routing Rule. Only valid for v2 SKUs.
  ///
  /// > **Note:** `backend_address_pool_name`, `backend_http_settings_name`, `redirect_configuration_name`, and `rewrite_rule_set_name` are applicable only when `rule_type` is `Basic`.
  final String? rewriteRuleSetName;
  /// The Type of Routing that should be used for this Rule. Possible values are `Basic` and `PathBasedRouting`.
  final String ruleType;
  /// The ID of the associated URL Path Map.
  final String? urlPathMapId;
  /// The Name of the URL Path Map which should be associated with this Routing Rule.
  final String? urlPathMapName;

  /// Creates a new [ApplicationGatewayRequestRoutingRule].
  /// [backendAddressPoolId] The ID of the associated Backend Address Pool.
  /// [backendAddressPoolName] The Name of the Backend Address Pool which should be used for this Routing Rule. Cannot be set if `redirect_configuration_name` is set.
  /// [backendHttpSettingsId] The ID of the associated Backend HTTP Settings Configuration.
  /// [backendHttpSettingsName] The Name of the Backend HTTP Settings Collection which should be used for this Routing Rule. Cannot be set if `redirect_configuration_name` is set.
  /// [httpListenerId] The ID of the associated HTTP Listener.
  /// [httpListenerName] The Name of the HTTP Listener which should be used for this Routing Rule.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of this Request Routing Rule.
  /// [priority] Rule evaluation order can be dictated by specifying an integer value from `1` to `20000` with `1` being the highest priority and `20000` being the lowest priority.
  /// [redirectConfigurationId] The ID of the associated Redirect Configuration.
  /// [redirectConfigurationName] The Name of the Redirect Configuration which should be used for this Routing Rule. Cannot be set if either `backend_address_pool_name` or `backend_http_settings_name` is set.
  /// [rewriteRuleSetId] The ID of the associated Rewrite Rule Set.
  /// [rewriteRuleSetName] The Name of the Rewrite Rule Set which should be used for this Routing Rule. Only valid for v2 SKUs.
  /// [ruleType] The Type of Routing that should be used for this Rule. Possible values are `Basic` and `PathBasedRouting`.
  /// [urlPathMapId] The ID of the associated URL Path Map.
  /// [urlPathMapName] The Name of the URL Path Map which should be associated with this Routing Rule.
  ApplicationGatewayRequestRoutingRule({
    this.backendAddressPoolId,
    this.backendAddressPoolName,
    this.backendHttpSettingsId,
    this.backendHttpSettingsName,
    this.httpListenerId,
    required this.httpListenerName,
    this.id,
    required this.name,
    this.priority,
    this.redirectConfigurationId,
    this.redirectConfigurationName,
    this.rewriteRuleSetId,
    this.rewriteRuleSetName,
    required this.ruleType,
    this.urlPathMapId,
    this.urlPathMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'backendAddressPoolName': ?backendAddressPoolName,
      'backendHttpSettingsId': ?backendHttpSettingsId,
      'backendHttpSettingsName': ?backendHttpSettingsName,
      'httpListenerId': ?httpListenerId,
      'httpListenerName': httpListenerName,
      'id': ?id,
      'name': name,
      'priority': ?priority,
      'redirectConfigurationId': ?redirectConfigurationId,
      'redirectConfigurationName': ?redirectConfigurationName,
      'rewriteRuleSetId': ?rewriteRuleSetId,
      'rewriteRuleSetName': ?rewriteRuleSetName,
      'ruleType': ruleType,
      'urlPathMapId': ?urlPathMapId,
      'urlPathMapName': ?urlPathMapName,
    };
  }

  factory ApplicationGatewayRequestRoutingRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRequestRoutingRule(
      backendAddressPoolId: map['backendAddressPoolId'] == null ? null : map['backendAddressPoolId'] as String,
      backendAddressPoolName: map['backendAddressPoolName'] == null ? null : map['backendAddressPoolName'] as String,
      backendHttpSettingsId: map['backendHttpSettingsId'] == null ? null : map['backendHttpSettingsId'] as String,
      backendHttpSettingsName: map['backendHttpSettingsName'] == null ? null : map['backendHttpSettingsName'] as String,
      httpListenerId: map['httpListenerId'] == null ? null : map['httpListenerId'] as String,
      httpListenerName: map['httpListenerName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      redirectConfigurationId: map['redirectConfigurationId'] == null ? null : map['redirectConfigurationId'] as String,
      redirectConfigurationName: map['redirectConfigurationName'] == null ? null : map['redirectConfigurationName'] as String,
      rewriteRuleSetId: map['rewriteRuleSetId'] == null ? null : map['rewriteRuleSetId'] as String,
      rewriteRuleSetName: map['rewriteRuleSetName'] == null ? null : map['rewriteRuleSetName'] as String,
      ruleType: map['ruleType'] as String,
      urlPathMapId: map['urlPathMapId'] == null ? null : map['urlPathMapId'] as String,
      urlPathMapName: map['urlPathMapName'] == null ? null : map['urlPathMapName'] as String,
    );
  }
}

