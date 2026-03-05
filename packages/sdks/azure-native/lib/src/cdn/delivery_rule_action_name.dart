/// The name of the action for the delivery rule.
enum DeliveryRuleActionName {
  cacheExpiration("CacheExpiration"),
  cacheKeyQueryString("CacheKeyQueryString"),
  modifyRequestHeader("ModifyRequestHeader"),
  modifyResponseHeader("ModifyResponseHeader"),
  urlRedirect("UrlRedirect"),
  urlRewrite("UrlRewrite"),
  urlSigning("UrlSigning"),
  originGroupOverride("OriginGroupOverride"),
  routeConfigurationOverride("RouteConfigurationOverride");

  const DeliveryRuleActionName(this.wireValue);
  final String wireValue;

  static DeliveryRuleActionName fromValue(String value) {
    for (final item in DeliveryRuleActionName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeliveryRuleActionName value: $value');
  }
}

