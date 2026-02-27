// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_retail_v2alpha_search_request_dynamic_facet_spec.dart';
import 'google_cloud_retail_v2alpha_search_request_personalization_spec.dart';
import 'serving_config_diversity_type2.dart';
import 'serving_config_solution_types_item2.dart';

/// The set of arguments for ServingConfig.
class ServingConfigArgs2 {
  /// Condition boost specifications. If a product matches multiple conditions in the specifications, boost scores from these specifications are all applied and combined in a non-linear way. Maximum number of specifications is 100. Notice that if both ServingConfig.boost_control_ids and SearchRequest.boost_spec are set, the boost conditions from both places are evaluated. If a search request matches multiple boost conditions, the final boost score is equal to the sum of the boost scores from all matched boost conditions. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? boostControlIds;
  final Input<String> catalogId;

  /// The human readable serving config display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final Input<String> displayName;

  /// How much diversity to use in recommendation model results e.g. `medium-diversity` or `high-diversity`. Currently supported values: * `no-diversity` * `low-diversity` * `medium-diversity` * `high-diversity` * `auto-diversity` If not specified, we choose default based on recommendation model type. Default value: `no-diversity`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final Input<String>? diversityLevel;

  /// What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
  final Input<ServingConfigDiversityType2>? diversityType;

  /// Condition do not associate specifications. If multiple do not associate conditions match, all matching do not associate controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? doNotAssociateControlIds;

  /// The specification for dynamically generated facets. Notice that only textual facets can be dynamically generated. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec>?
      dynamicFacetSpec;

  /// Whether to add additional category filters on the `similar-items` model. If not specified, we enable it by default. Allowed values are: * `no-category-match`: No additional filtering of original results from the model and the customer's filters. * `relaxed-category-match`: Only keep results with categories that match at least one item categories in the PredictRequests's context item. * If customer also sends filters in the PredictRequest, then the results will satisfy both conditions (user given and category match). Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final Input<String>? enableCategoryFilterLevel;

  /// Facet specifications for faceted search. If empty, no facets are returned. The ids refer to the ids of Control resources with only the Facet control set. These controls are assumed to be in the same Catalog as the ServingConfig. A maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error is returned. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? facetControlIds;

  /// Condition filter specifications. If a product matches multiple conditions in the specifications, filters from these specifications are all applied and combined via the AND operator. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? filterControlIds;

  /// Condition ignore specifications. If multiple ignore conditions match, all matching ignore controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? ignoreControlIds;
  final Input<String>? location;

  /// The id of the model in the same Catalog to use at serving time. Currently only RecommendationModels are supported: https://cloud.google.com/retail/recommendations-ai/docs/create-models Can be changed but only to a compatible model (e.g. others-you-may-like CTR to others-you-may-like CVR). Required when solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final Input<String>? modelId;

  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/servingConfig/*`
  final Input<String>? name;

  /// Condition oneway synonyms specifications. If multiple oneway synonyms conditions match, all matching oneway synonyms controls in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? onewaySynonymsControlIds;

  /// The specification for personalization spec. Can only be set if solution_types is SOLUTION_TYPE_SEARCH. Notice that if both ServingConfig.personalization_spec and SearchRequest.personalization_spec are set. SearchRequest.personalization_spec will override ServingConfig.personalization_spec.
  final Input<GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec>?
      personalizationSpec;

  /// How much price ranking we want in serving results. Price reranking causes product items with a similar recommendation probability to be ordered by price, with the highest-priced items first. This setting could result in a decrease in click-through and conversion rates. Allowed values are: * `no-price-reranking` * `low-price-reranking` * `medium-price-reranking` * `high-price-reranking` If not specified, we choose default based on model type. Default value: `no-price-reranking`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  final Input<String>? priceRerankingLevel;
  final Input<String>? project;

  /// Condition redirect specifications. Only the first triggered redirect action is applied, even if multiple apply. Maximum number of specifications is 1000. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? redirectControlIds;

  /// Condition replacement specifications. - Applied according to the order in the list. - A previously replaced term can not be re-replaced. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? replacementControlIds;

  /// Required. The ID to use for the ServingConfig, which will become the final component of the ServingConfig's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  final Input<String> servingConfigId;

  /// Immutable. Specifies the solution types that a serving config can be associated with. Currently we support setting only one type of solution.
  final Input<List<ServingConfigSolutionTypesItem2>> solutionTypes;

  /// Condition synonyms specifications. If multiple syonyms conditions match, all matching synonyms control in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  final Input<List<String>>? twowaySynonymsControlIds;

  ServingConfigArgs2({
    this.boostControlIds,
    required this.catalogId,
    required this.displayName,
    this.diversityLevel,
    this.diversityType,
    this.doNotAssociateControlIds,
    this.dynamicFacetSpec,
    this.enableCategoryFilterLevel,
    this.facetControlIds,
    this.filterControlIds,
    this.ignoreControlIds,
    this.location,
    this.modelId,
    this.name,
    this.onewaySynonymsControlIds,
    this.personalizationSpec,
    this.priceRerankingLevel,
    this.project,
    this.redirectControlIds,
    this.replacementControlIds,
    required this.servingConfigId,
    required this.solutionTypes,
    this.twowaySynonymsControlIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boostControlIdsValue = boostControlIds;
    if (boostControlIdsValue != null) {
      map['boostControlIds'] = boostControlIdsValue;
    }
    map['catalogId'] = catalogId;
    map['displayName'] = displayName;
    final diversityLevelValue = diversityLevel;
    if (diversityLevelValue != null) {
      map['diversityLevel'] = diversityLevelValue;
    }
    final diversityTypeValue = diversityType;
    if (diversityTypeValue != null) {
      map['diversityType'] =
          Input.mapOptionalInputValue<ServingConfigDiversityType2, String>(
              diversityTypeValue, (value) => value.value);
    }
    final doNotAssociateControlIdsValue = doNotAssociateControlIds;
    if (doNotAssociateControlIdsValue != null) {
      map['doNotAssociateControlIds'] = doNotAssociateControlIdsValue;
    }
    final dynamicFacetSpecValue = dynamicFacetSpec;
    if (dynamicFacetSpecValue != null) {
      map['dynamicFacetSpec'] = Input.mapOptionalInputValue<
              GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec,
              Map<String, dynamic>>(
          dynamicFacetSpecValue, (value) => value.toMap());
    }
    final enableCategoryFilterLevelValue = enableCategoryFilterLevel;
    if (enableCategoryFilterLevelValue != null) {
      map['enableCategoryFilterLevel'] = enableCategoryFilterLevelValue;
    }
    final facetControlIdsValue = facetControlIds;
    if (facetControlIdsValue != null) {
      map['facetControlIds'] = facetControlIdsValue;
    }
    final filterControlIdsValue = filterControlIds;
    if (filterControlIdsValue != null) {
      map['filterControlIds'] = filterControlIdsValue;
    }
    final ignoreControlIdsValue = ignoreControlIds;
    if (ignoreControlIdsValue != null) {
      map['ignoreControlIds'] = ignoreControlIdsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final modelIdValue = modelId;
    if (modelIdValue != null) {
      map['modelId'] = modelIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final onewaySynonymsControlIdsValue = onewaySynonymsControlIds;
    if (onewaySynonymsControlIdsValue != null) {
      map['onewaySynonymsControlIds'] = onewaySynonymsControlIdsValue;
    }
    final personalizationSpecValue = personalizationSpec;
    if (personalizationSpecValue != null) {
      map['personalizationSpec'] = Input.mapOptionalInputValue<
              GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec,
              Map<String, dynamic>>(
          personalizationSpecValue, (value) => value.toMap());
    }
    final priceRerankingLevelValue = priceRerankingLevel;
    if (priceRerankingLevelValue != null) {
      map['priceRerankingLevel'] = priceRerankingLevelValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final redirectControlIdsValue = redirectControlIds;
    if (redirectControlIdsValue != null) {
      map['redirectControlIds'] = redirectControlIdsValue;
    }
    final replacementControlIdsValue = replacementControlIds;
    if (replacementControlIdsValue != null) {
      map['replacementControlIds'] = replacementControlIdsValue;
    }
    map['servingConfigId'] = servingConfigId;
    map['solutionTypes'] = Input.mapInputValue<
            List<ServingConfigSolutionTypesItem2>, List<String>>(
        solutionTypes,
        (value) => Input.encodeList<ServingConfigSolutionTypesItem2, String>(
            value, (value) => value.value));
    final twowaySynonymsControlIdsValue = twowaySynonymsControlIds;
    if (twowaySynonymsControlIdsValue != null) {
      map['twowaySynonymsControlIds'] = twowaySynonymsControlIdsValue;
    }
    return map;
  }

  factory ServingConfigArgs2.fromMap(Map<String, dynamic> map) {
    return ServingConfigArgs2(
      boostControlIds:
          Input.asOptionalInput<List<String>>(map['boostControlIds']),
      catalogId: Input.asInput<String>(map['catalogId']),
      displayName: Input.asInput<String>(map['displayName']),
      diversityLevel: Input.asOptionalInput<String>(map['diversityLevel']),
      diversityType: Input.asOptionalInput<ServingConfigDiversityType2>(
          map['diversityType']),
      doNotAssociateControlIds:
          Input.asOptionalInput<List<String>>(map['doNotAssociateControlIds']),
      dynamicFacetSpec: Input.asOptionalInput<
              GoogleCloudRetailV2alphaSearchRequestDynamicFacetSpec>(
          map['dynamicFacetSpec']),
      enableCategoryFilterLevel:
          Input.asOptionalInput<String>(map['enableCategoryFilterLevel']),
      facetControlIds:
          Input.asOptionalInput<List<String>>(map['facetControlIds']),
      filterControlIds:
          Input.asOptionalInput<List<String>>(map['filterControlIds']),
      ignoreControlIds:
          Input.asOptionalInput<List<String>>(map['ignoreControlIds']),
      location: Input.asOptionalInput<String>(map['location']),
      modelId: Input.asOptionalInput<String>(map['modelId']),
      name: Input.asOptionalInput<String>(map['name']),
      onewaySynonymsControlIds:
          Input.asOptionalInput<List<String>>(map['onewaySynonymsControlIds']),
      personalizationSpec: Input.asOptionalInput<
              GoogleCloudRetailV2alphaSearchRequestPersonalizationSpec>(
          map['personalizationSpec']),
      priceRerankingLevel:
          Input.asOptionalInput<String>(map['priceRerankingLevel']),
      project: Input.asOptionalInput<String>(map['project']),
      redirectControlIds:
          Input.asOptionalInput<List<String>>(map['redirectControlIds']),
      replacementControlIds:
          Input.asOptionalInput<List<String>>(map['replacementControlIds']),
      servingConfigId: Input.asInput<String>(map['servingConfigId']),
      solutionTypes: Input.asInput<List<ServingConfigSolutionTypesItem2>>(
          map['solutionTypes']),
      twowaySynonymsControlIds:
          Input.asOptionalInput<List<String>>(map['twowaySynonymsControlIds']),
    );
  }
}
