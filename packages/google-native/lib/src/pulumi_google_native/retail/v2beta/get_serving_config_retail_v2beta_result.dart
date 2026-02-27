// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2beta_search_request_dynamic_facet_spec_response.dart';
import 'google_cloud_retail_v2beta_search_request_personalization_spec_response.dart';

/// Result data returned by getServingConfig.
class GetServingConfigRetailV2betaResult {
  /// Condition boost specifications. If a product matches multiple conditions in the specifications, boost scores from these specifications are all applied and combined in a non-linear way. Maximum number of specifications is 100. Notice that if both ServingConfig.boost_control_ids and SearchRequest.boost_spec are set, the boost conditions from both places are evaluated. If a search request matches multiple boost conditions, the final boost score is equal to the sum of the boost scores from all matched boost conditions. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> boostControlIds;

  /// The human readable serving config display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final String displayName;

  /// How much diversity to use in recommendation model results e.g. `medium-diversity` or `high-diversity`. Currently supported values: * `no-diversity` * `low-diversity` * `medium-diversity` * `high-diversity` * `auto-diversity` If not specified, we choose default based on recommendation model type. Default value: `no-diversity`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final String diversityLevel;

  /// What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
  final String diversityType;

  /// Condition do not associate specifications. If multiple do not associate conditions match, all matching do not associate controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> doNotAssociateControlIds;

  /// The specification for dynamically generated facets. Notice that only textual facets can be dynamically generated. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse
      dynamicFacetSpec;

  /// Whether to add additional category filters on the `similar-items` model. If not specified, we enable it by default. Allowed values are: * `no-category-match`: No additional filtering of original results from the model and the customer's filters. * `relaxed-category-match`: Only keep results with categories that match at least one item categories in the PredictRequests's context item. * If customer also sends filters in the PredictRequest, then the results will satisfy both conditions (user given and category match). Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final String enableCategoryFilterLevel;

  /// Facet specifications for faceted search. If empty, no facets are returned. The ids refer to the ids of Control resources with only the Facet control set. These controls are assumed to be in the same Catalog as the ServingConfig. A maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error is returned. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> facetControlIds;

  /// Condition filter specifications. If a product matches multiple conditions in the specifications, filters from these specifications are all applied and combined via the AND operator. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> filterControlIds;

  /// Condition ignore specifications. If multiple ignore conditions match, all matching ignore controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> ignoreControlIds;

  /// The id of the model in the same Catalog to use at serving time. Currently only RecommendationModels are supported: https://cloud.google.com/retail/recommendations-ai/docs/create-models Can be changed but only to a compatible model (e.g. others-you-may-like CTR to others-you-may-like CVR). Required when solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final String modelId;

  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/servingConfig/*`
  final String name;

  /// Condition oneway synonyms specifications. If multiple oneway synonyms conditions match, all matching oneway synonyms controls in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> onewaySynonymsControlIds;

  /// The specification for personalization spec. Can only be set if solution_types is SOLUTION_TYPE_SEARCH. Notice that if both ServingConfig.personalization_spec and SearchRequest.personalization_spec are set. SearchRequest.personalization_spec will override ServingConfig.personalization_spec.
  final GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse
      personalizationSpec;

  /// How much price ranking we want in serving results. Price reranking causes product items with a similar recommendation probability to be ordered by price, with the highest-priced items first. This setting could result in a decrease in click-through and conversion rates. Allowed values are: * `no-price-reranking` * `low-price-reranking` * `medium-price-reranking` * `high-price-reranking` If not specified, we choose default based on model type. Default value: `no-price-reranking`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final String priceRerankingLevel;

  /// Condition redirect specifications. Only the first triggered redirect action is applied, even if multiple apply. Maximum number of specifications is 1000. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> redirectControlIds;

  /// Condition replacement specifications. - Applied according to the order in the list. - A previously replaced term can not be re-replaced. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> replacementControlIds;

  /// Immutable. Specifies the solution types that a serving config can be associated with. Currently we support setting only one type of solution.
  final List<String> solutionTypes;

  /// Condition synonyms specifications. If multiple syonyms conditions match, all matching synonyms control in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final List<String> twowaySynonymsControlIds;

  GetServingConfigRetailV2betaResult({
    required this.boostControlIds,
    required this.displayName,
    required this.diversityLevel,
    required this.diversityType,
    required this.doNotAssociateControlIds,
    required this.dynamicFacetSpec,
    required this.enableCategoryFilterLevel,
    required this.facetControlIds,
    required this.filterControlIds,
    required this.ignoreControlIds,
    required this.modelId,
    required this.name,
    required this.onewaySynonymsControlIds,
    required this.personalizationSpec,
    required this.priceRerankingLevel,
    required this.redirectControlIds,
    required this.replacementControlIds,
    required this.solutionTypes,
    required this.twowaySynonymsControlIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['boostControlIds'] = boostControlIds;
    map['displayName'] = displayName;
    map['diversityLevel'] = diversityLevel;
    map['diversityType'] = diversityType;
    map['doNotAssociateControlIds'] = doNotAssociateControlIds;
    map['dynamicFacetSpec'] = dynamicFacetSpec.toMap();
    map['enableCategoryFilterLevel'] = enableCategoryFilterLevel;
    map['facetControlIds'] = facetControlIds;
    map['filterControlIds'] = filterControlIds;
    map['ignoreControlIds'] = ignoreControlIds;
    map['modelId'] = modelId;
    map['name'] = name;
    map['onewaySynonymsControlIds'] = onewaySynonymsControlIds;
    map['personalizationSpec'] = personalizationSpec.toMap();
    map['priceRerankingLevel'] = priceRerankingLevel;
    map['redirectControlIds'] = redirectControlIds;
    map['replacementControlIds'] = replacementControlIds;
    map['solutionTypes'] = solutionTypes;
    map['twowaySynonymsControlIds'] = twowaySynonymsControlIds;
    return map;
  }

  factory GetServingConfigRetailV2betaResult.fromMap(Map<String, dynamic> map) {
    return GetServingConfigRetailV2betaResult(
      boostControlIds: (map['boostControlIds'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      diversityLevel: map['diversityLevel'] as String,
      diversityType: map['diversityType'] as String,
      doNotAssociateControlIds:
          (map['doNotAssociateControlIds'] as List).cast<String>(),
      dynamicFacetSpec:
          GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse.fromMap(
              (map['dynamicFacetSpec'] as Map).cast<String, dynamic>()),
      enableCategoryFilterLevel: map['enableCategoryFilterLevel'] as String,
      facetControlIds: (map['facetControlIds'] as List).cast<String>(),
      filterControlIds: (map['filterControlIds'] as List).cast<String>(),
      ignoreControlIds: (map['ignoreControlIds'] as List).cast<String>(),
      modelId: map['modelId'] as String,
      name: map['name'] as String,
      onewaySynonymsControlIds:
          (map['onewaySynonymsControlIds'] as List).cast<String>(),
      personalizationSpec:
          GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse
              .fromMap(
                  (map['personalizationSpec'] as Map).cast<String, dynamic>()),
      priceRerankingLevel: map['priceRerankingLevel'] as String,
      redirectControlIds: (map['redirectControlIds'] as List).cast<String>(),
      replacementControlIds:
          (map['replacementControlIds'] as List).cast<String>(),
      solutionTypes: (map['solutionTypes'] as List).cast<String>(),
      twowaySynonymsControlIds:
          (map['twowaySynonymsControlIds'] as List).cast<String>(),
    );
  }
}
