// ignore_for_file: unused_element, unnecessary_cast


class ApplicationGatewayUrlPathMapPathRule {
  /// The ID of the associated Backend Address Pool.
  final String? backendAddressPoolId;
  /// The Name of the Backend Address Pool to use for this Path Rule. Cannot be set if `redirect_configuration_name` is set.
  final String? backendAddressPoolName;
  /// The ID of the associated Backend HTTP Settings Configuration.
  final String? backendHttpSettingsId;
  /// The Name of the Backend HTTP Settings Collection to use for this Path Rule. Cannot be set if `redirect_configuration_name` is set.
  final String? backendHttpSettingsName;
  /// The ID of the Web Application Firewall Policy which should be used as an HTTP Listener.
  final String? firewallPolicyId;
  /// The ID of the Rewrite Rule Set
  final String? id;
  /// The Name of the Path Rule.
  final String name;
  /// A list of Paths used in this Path Rule.
  final List<String> paths;
  /// The ID of the associated Redirect Configuration.
  final String? redirectConfigurationId;
  /// The Name of a Redirect Configuration to use for this Path Rule. Cannot be set if `backend_address_pool_name` or `backend_http_settings_name` is set.
  final String? redirectConfigurationName;
  /// The ID of the associated Rewrite Rule Set.
  final String? rewriteRuleSetId;
  /// The Name of the Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
  final String? rewriteRuleSetName;

  /// Creates a new [ApplicationGatewayUrlPathMapPathRule].
  /// [backendAddressPoolId] The ID of the associated Backend Address Pool.
  /// [backendAddressPoolName] The Name of the Backend Address Pool to use for this Path Rule. Cannot be set if `redirect_configuration_name` is set.
  /// [backendHttpSettingsId] The ID of the associated Backend HTTP Settings Configuration.
  /// [backendHttpSettingsName] The Name of the Backend HTTP Settings Collection to use for this Path Rule. Cannot be set if `redirect_configuration_name` is set.
  /// [firewallPolicyId] The ID of the Web Application Firewall Policy which should be used as an HTTP Listener.
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The Name of the Path Rule.
  /// [paths] A list of Paths used in this Path Rule.
  /// [redirectConfigurationId] The ID of the associated Redirect Configuration.
  /// [redirectConfigurationName] The Name of a Redirect Configuration to use for this Path Rule. Cannot be set if `backend_address_pool_name` or `backend_http_settings_name` is set.
  /// [rewriteRuleSetId] The ID of the associated Rewrite Rule Set.
  /// [rewriteRuleSetName] The Name of the Rewrite Rule Set which should be used for this URL Path Map. Only valid for v2 SKUs.
  ApplicationGatewayUrlPathMapPathRule({
    this.backendAddressPoolId,
    this.backendAddressPoolName,
    this.backendHttpSettingsId,
    this.backendHttpSettingsName,
    this.firewallPolicyId,
    this.id,
    required this.name,
    required this.paths,
    this.redirectConfigurationId,
    this.redirectConfigurationName,
    this.rewriteRuleSetId,
    this.rewriteRuleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolId': ?backendAddressPoolId,
      'backendAddressPoolName': ?backendAddressPoolName,
      'backendHttpSettingsId': ?backendHttpSettingsId,
      'backendHttpSettingsName': ?backendHttpSettingsName,
      'firewallPolicyId': ?firewallPolicyId,
      'id': ?id,
      'name': name,
      'paths': paths,
      'redirectConfigurationId': ?redirectConfigurationId,
      'redirectConfigurationName': ?redirectConfigurationName,
      'rewriteRuleSetId': ?rewriteRuleSetId,
      'rewriteRuleSetName': ?rewriteRuleSetName,
    };
  }

  factory ApplicationGatewayUrlPathMapPathRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayUrlPathMapPathRule(
      backendAddressPoolId: map['backendAddressPoolId'] == null ? null : map['backendAddressPoolId'] as String,
      backendAddressPoolName: map['backendAddressPoolName'] == null ? null : map['backendAddressPoolName'] as String,
      backendHttpSettingsId: map['backendHttpSettingsId'] == null ? null : map['backendHttpSettingsId'] as String,
      backendHttpSettingsName: map['backendHttpSettingsName'] == null ? null : map['backendHttpSettingsName'] as String,
      firewallPolicyId: map['firewallPolicyId'] == null ? null : map['firewallPolicyId'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      paths: (map['paths'] as List).cast<String>(),
      redirectConfigurationId: map['redirectConfigurationId'] == null ? null : map['redirectConfigurationId'] as String,
      redirectConfigurationName: map['redirectConfigurationName'] == null ? null : map['redirectConfigurationName'] as String,
      rewriteRuleSetId: map['rewriteRuleSetId'] == null ? null : map['rewriteRuleSetId'] as String,
      rewriteRuleSetName: map['rewriteRuleSetName'] == null ? null : map['rewriteRuleSetName'] as String,
    );
  }
}

