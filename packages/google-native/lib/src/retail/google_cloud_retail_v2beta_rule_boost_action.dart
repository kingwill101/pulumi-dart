// ignore_for_file: unused_element, unnecessary_cast

/// A boost action to apply to results matching condition specified above.
class GoogleCloudRetailV2betaRuleBoostAction {
  /// Strength of the condition boost, which must be in [-1, 1]. Negative boost means demotion. Default is 0.0. Setting to 1.0 gives the item a big promotion. However, it does not necessarily mean that the boosted item will be the top result at all times, nor that other items will be excluded. Results could still be shown even when none of them matches the condition. And results that are significantly more relevant to the search query can still trump your heavily favored but irrelevant items. Setting to -1.0 gives the item a big demotion. However, results that are deeply relevant might still be shown. The item will have an upstream battle to get a fairly high ranking, but it is not blocked out completely. Setting to 0.0 means no boost applied. The boosting condition is ignored.
  final double? boost;

  /// The filter can have a max size of 5000 characters. An expression which specifies which products to apply an action to. The syntax and supported fields are the same as a filter expression. See SearchRequest.filter for detail syntax and limitations. Examples: * To boost products with product ID "product_1" or "product_2", and color "Red" or "Blue": *(id: ANY("product_1", "product_2")) * *AND * *(colorFamilies: ANY("Red", "Blue")) *
  final String? productsFilter;

  /// Creates a new [GoogleCloudRetailV2betaRuleBoostAction].
  /// [boost] Strength of the condition boost, which must be in [-1, 1]. Negative boost means demotion. Default is 0.0. Setting to 1.0 gives the item a big promotion. However, it does not necessarily mean that the boosted item will be the top result at all times, nor that other items will be excluded. Results could still be shown even when none of them matches the condition. And results that are significantly more relevant to the search query can still trump your heavily favored but irrelevant items. Setting to -1.0 gives the item a big demotion. However, results that are deeply relevant might still be shown. The item will have an upstream battle to get a fairly high ranking, but it is not blocked out completely. Setting to 0.0 means no boost applied. The boosting condition is ignored.
  /// [productsFilter] The filter can have a max size of 5000 characters. An expression which specifies which products to apply an action to. The syntax and supported fields are the same as a filter expression. See SearchRequest.filter for detail syntax and limitations. Examples: * To boost products with product ID "product_1" or "product_2", and color "Red" or "Blue": *(id: ANY("product_1", "product_2")) * *AND * *(colorFamilies: ANY("Red", "Blue")) *
  GoogleCloudRetailV2betaRuleBoostAction({
    this.boost,
    this.productsFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boostValue = boost;
    if (boostValue != null) {
      map['boost'] = boostValue;
    }
    final productsFilterValue = productsFilter;
    if (productsFilterValue != null) {
      map['productsFilter'] = productsFilterValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2betaRuleBoostAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleBoostAction(
      boost: map['boost'] == null ? null : map['boost'] as double,
      productsFilter: map['productsFilter'] == null
          ? null
          : map['productsFilter'] as String,
    );
  }
}
