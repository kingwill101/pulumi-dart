enum DeliveryRuleConditionParametersType {
  deliveryRuleRemoteAddressConditionParameters(
    "DeliveryRuleRemoteAddressConditionParameters",
  ),
  deliveryRuleRequestMethodConditionParameters(
    "DeliveryRuleRequestMethodConditionParameters",
  ),
  deliveryRuleQueryStringConditionParameters(
    "DeliveryRuleQueryStringConditionParameters",
  ),
  deliveryRulePostArgsConditionParameters(
    "DeliveryRulePostArgsConditionParameters",
  ),
  deliveryRuleRequestUriConditionParameters(
    "DeliveryRuleRequestUriConditionParameters",
  ),
  deliveryRuleRequestHeaderConditionParameters(
    "DeliveryRuleRequestHeaderConditionParameters",
  ),
  deliveryRuleRequestBodyConditionParameters(
    "DeliveryRuleRequestBodyConditionParameters",
  ),
  deliveryRuleRequestSchemeConditionParameters(
    "DeliveryRuleRequestSchemeConditionParameters",
  ),
  deliveryRuleUrlPathMatchConditionParameters(
    "DeliveryRuleUrlPathMatchConditionParameters",
  ),
  deliveryRuleUrlFileExtensionMatchConditionParameters(
    "DeliveryRuleUrlFileExtensionMatchConditionParameters",
  ),
  deliveryRuleUrlFilenameConditionParameters(
    "DeliveryRuleUrlFilenameConditionParameters",
  ),
  deliveryRuleHttpVersionConditionParameters(
    "DeliveryRuleHttpVersionConditionParameters",
  ),
  deliveryRuleCookiesConditionParameters(
    "DeliveryRuleCookiesConditionParameters",
  ),
  deliveryRuleIsDeviceConditionParameters(
    "DeliveryRuleIsDeviceConditionParameters",
  ),
  deliveryRuleSocketAddrConditionParameters(
    "DeliveryRuleSocketAddrConditionParameters",
  ),
  deliveryRuleClientPortConditionParameters(
    "DeliveryRuleClientPortConditionParameters",
  ),
  deliveryRuleServerPortConditionParameters(
    "DeliveryRuleServerPortConditionParameters",
  ),
  deliveryRuleHostNameConditionParameters(
    "DeliveryRuleHostNameConditionParameters",
  ),
  deliveryRuleSslProtocolConditionParameters(
    "DeliveryRuleSslProtocolConditionParameters",
  );

  const DeliveryRuleConditionParametersType(this.wireValue);
  final String wireValue;

  static DeliveryRuleConditionParametersType fromValue(String value) {
    for (final item in DeliveryRuleConditionParametersType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DeliveryRuleConditionParametersType value: $value',
    );
  }
}
