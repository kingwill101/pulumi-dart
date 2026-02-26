// ignore_for_file: unused_element, unnecessary_cast

/// Removes an attribute/facet in the request if is present. * Rule Condition: Must specify non-empty Condition.query_terms (for search only) or Condition.page_categories (for browse only), but can't specify both. * Action Input: attribute name * Action Result: Will remove the attribute (as a facet) from the request if it is present. Example: Suppose the query is "shoes", the Condition.query_terms is "shoes" and the attribute name "size", then facet key "size" will be removed from the request (if it is present).
class GoogleCloudRetailV2betaRuleRemoveFacetAction {
  /// The attribute names (i.e. facet keys) to remove from the dynamic facets (if present in the request). There can't be more 3 attribute names. Each attribute name should be a valid attribute name, be non-empty and contain at most 80 characters.
  final List<String>? attributeNames;

  GoogleCloudRetailV2betaRuleRemoveFacetAction({
    this.attributeNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributeNamesValue = attributeNames;
    if (attributeNamesValue != null) {
      map['attributeNames'] = attributeNamesValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2betaRuleRemoveFacetAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaRuleRemoveFacetAction(
      attributeNames: map['attributeNames'] == null
          ? null
          : (map['attributeNames'] as List).cast<String>(),
    );
  }
}
