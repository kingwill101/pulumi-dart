import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_retail_v2beta_search_request_dynamic_facet_spec_response.dart';
import 'google_cloud_retail_v2beta_search_request_personalization_spec_response.dart';
import 'serving_config_args3.dart';

/// Creates a ServingConfig. A maximum of 100 ServingConfigs are allowed in a Catalog, otherwise a FAILED_PRECONDITION error is returned.
/// Auto-naming is currently not supported for this resource.
class ServingConfig4 extends CustomResource {
  /// Condition boost specifications. If a product matches multiple conditions in the specifications, boost scores from these specifications are all applied and combined in a non-linear way. Maximum number of specifications is 100. Notice that if both ServingConfig.boost_control_ids and SearchRequest.boost_spec are set, the boost conditions from both places are evaluated. If a search request matches multiple boost conditions, the final boost score is equal to the sum of the boost scores from all matched boost conditions. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> boostControlIds;
  late final Output<String> catalogId;

  /// The human readable serving config display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  late final Output<String> displayName;

  /// How much diversity to use in recommendation model results e.g. `medium-diversity` or `high-diversity`. Currently supported values: * `no-diversity` * `low-diversity` * `medium-diversity` * `high-diversity` * `auto-diversity` If not specified, we choose default based on recommendation model type. Default value: `no-diversity`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  late final Output<String> diversityLevel;

  /// What kind of diversity to use - data driven or rule based. If unset, the server behavior defaults to RULE_BASED_DIVERSITY.
  late final Output<String> diversityType;

  /// Condition do not associate specifications. If multiple do not associate conditions match, all matching do not associate controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> doNotAssociateControlIds;

  /// The specification for dynamically generated facets. Notice that only textual facets can be dynamically generated. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<
          GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse>
      dynamicFacetSpec;

  /// Whether to add additional category filters on the `similar-items` model. If not specified, we enable it by default. Allowed values are: * `no-category-match`: No additional filtering of original results from the model and the customer's filters. * `relaxed-category-match`: Only keep results with categories that match at least one item categories in the PredictRequests's context item. * If customer also sends filters in the PredictRequest, then the results will satisfy both conditions (user given and category match). Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  late final Output<String> enableCategoryFilterLevel;

  /// Facet specifications for faceted search. If empty, no facets are returned. The ids refer to the ids of Control resources with only the Facet control set. These controls are assumed to be in the same Catalog as the ServingConfig. A maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error is returned. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> facetControlIds;

  /// Condition filter specifications. If a product matches multiple conditions in the specifications, filters from these specifications are all applied and combined via the AND operator. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> filterControlIds;

  /// Condition ignore specifications. If multiple ignore conditions match, all matching ignore controls in the list will execute. - Order does not matter. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> ignoreControlIds;
  late final Output<String> location;

  /// The id of the model in the same Catalog to use at serving time. Currently only RecommendationModels are supported: https://cloud.google.com/retail/recommendations-ai/docs/create-models Can be changed but only to a compatible model (e.g. others-you-may-like CTR to others-you-may-like CVR). Required when solution_types is SOLUTION_TYPE_RECOMMENDATION.
  late final Output<String> modelId;

  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/servingConfig/*`
  late final Output<String> name;

  /// Condition oneway synonyms specifications. If multiple oneway synonyms conditions match, all matching oneway synonyms controls in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> onewaySynonymsControlIds;

  /// The specification for personalization spec. Can only be set if solution_types is SOLUTION_TYPE_SEARCH. Notice that if both ServingConfig.personalization_spec and SearchRequest.personalization_spec are set. SearchRequest.personalization_spec will override ServingConfig.personalization_spec.
  late final Output<
          GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse>
      personalizationSpec;

  /// How much price ranking we want in serving results. Price reranking causes product items with a similar recommendation probability to be ordered by price, with the highest-priced items first. This setting could result in a decrease in click-through and conversion rates. Allowed values are: * `no-price-reranking` * `low-price-reranking` * `medium-price-reranking` * `high-price-reranking` If not specified, we choose default based on model type. Default value: `no-price-reranking`. Can only be set if solution_types is SOLUTION_TYPE_RECOMMENDATION.
  late final Output<String> priceRerankingLevel;
  late final Output<String> project;

  /// Condition redirect specifications. Only the first triggered redirect action is applied, even if multiple apply. Maximum number of specifications is 1000. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> redirectControlIds;

  /// Condition replacement specifications. - Applied according to the order in the list. - A previously replaced term can not be re-replaced. - Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> replacementControlIds;

  /// Required. The ID to use for the ServingConfig, which will become the final component of the ServingConfig's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  late final Output<String> servingConfigId;

  /// Immutable. Specifies the solution types that a serving config can be associated with. Currently we support setting only one type of solution.
  late final Output<List<String>> solutionTypes;

  /// Condition synonyms specifications. If multiple syonyms conditions match, all matching synonyms control in the list will execute. Order of controls in the list will not matter. Maximum number of specifications is 100. Can only be set if solution_types is SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> twowaySynonymsControlIds;

  ServingConfig4(
    String name, {
    ServingConfigArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:retail/v2beta:ServingConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.boostControlIds = registerOutput<List<String>>('boostControlIds');
    this.catalogId = registerOutput<String>('catalogId');
    this.displayName = registerOutput<String>('displayName');
    this.diversityLevel = registerOutput<String>('diversityLevel');
    this.diversityType = registerOutput<String>('diversityType');
    this.doNotAssociateControlIds =
        registerOutput<List<String>>('doNotAssociateControlIds');
    this.dynamicFacetSpec = registerOutput<
            GoogleCloudRetailV2betaSearchRequestDynamicFacetSpecResponse>(
        'dynamicFacetSpec');
    this.enableCategoryFilterLevel =
        registerOutput<String>('enableCategoryFilterLevel');
    this.facetControlIds = registerOutput<List<String>>('facetControlIds');
    this.filterControlIds = registerOutput<List<String>>('filterControlIds');
    this.ignoreControlIds = registerOutput<List<String>>('ignoreControlIds');
    this.location = registerOutput<String>('location');
    this.modelId = registerOutput<String>('modelId');
    this.name = registerOutput<String>('name');
    this.onewaySynonymsControlIds =
        registerOutput<List<String>>('onewaySynonymsControlIds');
    this.personalizationSpec = registerOutput<
            GoogleCloudRetailV2betaSearchRequestPersonalizationSpecResponse>(
        'personalizationSpec');
    this.priceRerankingLevel = registerOutput<String>('priceRerankingLevel');
    this.project = registerOutput<String>('project');
    this.redirectControlIds =
        registerOutput<List<String>>('redirectControlIds');
    this.replacementControlIds =
        registerOutput<List<String>>('replacementControlIds');
    this.servingConfigId = registerOutput<String>('servingConfigId');
    this.solutionTypes = registerOutput<List<String>>('solutionTypes');
    this.twowaySynonymsControlIds =
        registerOutput<List<String>>('twowaySynonymsControlIds');
  }
}
