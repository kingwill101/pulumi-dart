import 'package:pulumi/pulumi.dart';
import 'control_args3.dart';
import 'google_cloud_retail_v2beta_rule_response.dart';
import 'google_cloud_retail_v2beta_search_request_facet_spec_response.dart';

/// Creates a Control. If the Control to create already exists, an ALREADY_EXISTS error is returned.
/// Auto-naming is currently not supported for this resource.
class Control4 extends CustomResource {
  /// List of serving config ids that are associated with this control in the same Catalog. Note the association is managed via the ServingConfig, this is an output only denormalized view.
  late final Output<List<String>> associatedServingConfigIds;
  late final Output<String> catalogId;

  /// Required. The ID to use for the Control, which will become the final component of the Control's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  late final Output<String> controlId;

  /// The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  late final Output<String> displayName;

  /// A facet specification to perform faceted search. Note that this field is deprecated and will throw NOT_IMPLEMENTED if used for creating a control.
  late final Output<GoogleCloudRetailV2betaSearchRequestFacetSpecResponse>
      facetSpec;
  late final Output<String> location;

  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  late final Output<String> name;
  late final Output<String> project;

  /// A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  late final Output<GoogleCloudRetailV2betaRuleResponse> rule;

  /// Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  late final Output<List<String>> searchSolutionUseCase;

  /// Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  late final Output<List<String>> solutionTypes;

  Control4(
    String name, {
    ControlArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:retail/v2beta:Control',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.associatedServingConfigIds = Output.createUnknown<List<String>>();
    this.catalogId = Output.createUnknown<String>();
    this.controlId = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.facetSpec = Output.createUnknown<
        GoogleCloudRetailV2betaSearchRequestFacetSpecResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.rule = Output.createUnknown<GoogleCloudRetailV2betaRuleResponse>();
    this.searchSolutionUseCase = Output.createUnknown<List<String>>();
    this.solutionTypes = Output.createUnknown<List<String>>();
  }
}
