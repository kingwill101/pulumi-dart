enum DeliveryRuleActionParametersType {
  deliveryRuleUrlRedirectActionParameters("DeliveryRuleUrlRedirectActionParameters"),
  deliveryRuleUrlSigningActionParameters("DeliveryRuleUrlSigningActionParameters"),
  deliveryRuleOriginGroupOverrideActionParameters("DeliveryRuleOriginGroupOverrideActionParameters"),
  deliveryRuleUrlRewriteActionParameters("DeliveryRuleUrlRewriteActionParameters"),
  deliveryRuleHeaderActionParameters("DeliveryRuleHeaderActionParameters"),
  deliveryRuleCacheExpirationActionParameters("DeliveryRuleCacheExpirationActionParameters"),
  deliveryRuleCacheKeyQueryStringBehaviorActionParameters("DeliveryRuleCacheKeyQueryStringBehaviorActionParameters"),
  deliveryRuleRouteConfigurationOverrideActionParameters("DeliveryRuleRouteConfigurationOverrideActionParameters");

  const DeliveryRuleActionParametersType(this.value);
  final String value;

  static DeliveryRuleActionParametersType fromValue(String value) {
    for (final item in DeliveryRuleActionParametersType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeliveryRuleActionParametersType value: $value');
  }
}

