// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_search_solution_use_case_item_retail_v2alpha.dart';
import 'control_solution_types_item_retail_v2alpha.dart';
import 'google_cloud_retail_v2alpha_rule.dart';
import 'google_cloud_retail_v2alpha_search_request_facet_spec.dart';

/// The set of arguments for Control.
class ControlRetailV2alphaArgs {
  final pulumi.Input<String> catalogId;

  /// Required. The ID to use for the Control, which will become the final component of the Control's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  final pulumi.Input<String> controlId;

  /// The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  final pulumi.Input<String> displayName;

  /// A facet specification to perform faceted search. Note that this field is deprecated and will throw NOT_IMPLEMENTED if used for creating a control.
  final pulumi.Input<GoogleCloudRetailV2alphaSearchRequestFacetSpec>? facetSpec;
  final pulumi.Input<String>? location;

  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  final pulumi.Input<GoogleCloudRetailV2alphaRule>? rule;

  /// Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  final pulumi.Input<List<ControlSearchSolutionUseCaseItemRetailV2alpha>>?
      searchSolutionUseCase;

  /// Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<ControlSolutionTypesItemRetailV2alpha>> solutionTypes;

  ControlRetailV2alphaArgs({
    required this.catalogId,
    required this.controlId,
    required this.displayName,
    this.facetSpec,
    this.location,
    this.name,
    this.project,
    this.rule,
    this.searchSolutionUseCase,
    required this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['controlId'] = controlId;
    map['displayName'] = displayName;
    final facetSpecValue = facetSpec;
    if (facetSpecValue != null) {
      map['facetSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRetailV2alphaSearchRequestFacetSpec,
          Map<String, dynamic>>(facetSpecValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final ruleValue = rule;
    if (ruleValue != null) {
      map['rule'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudRetailV2alphaRule,
          Map<String, dynamic>>(ruleValue, (value) => value.toMap());
    }
    final searchSolutionUseCaseValue = searchSolutionUseCase;
    if (searchSolutionUseCaseValue != null) {
      map['searchSolutionUseCase'] = pulumi.Input.mapOptionalInputValue<
              List<ControlSearchSolutionUseCaseItemRetailV2alpha>,
              List<String>>(
          searchSolutionUseCaseValue,
          (value) => pulumi.Input.encodeList<
              ControlSearchSolutionUseCaseItemRetailV2alpha,
              String>(value, (value) => value.value));
    }
    map['solutionTypes'] = pulumi.Input.mapInputValue<
            List<ControlSolutionTypesItemRetailV2alpha>, List<String>>(
        solutionTypes,
        (value) => pulumi.Input.encodeList<
            ControlSolutionTypesItemRetailV2alpha,
            String>(value, (value) => value.value));
    return map;
  }

  factory ControlRetailV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return ControlRetailV2alphaArgs(
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      controlId: pulumi.Input.asInput<String>(map['controlId']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      facetSpec: pulumi.Input.asOptionalInput<
          GoogleCloudRetailV2alphaSearchRequestFacetSpec>(map['facetSpec']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      rule: pulumi.Input.asOptionalInput<GoogleCloudRetailV2alphaRule>(
          map['rule']),
      searchSolutionUseCase: pulumi.Input.asOptionalInput<
              List<ControlSearchSolutionUseCaseItemRetailV2alpha>>(
          map['searchSolutionUseCase']),
      solutionTypes:
          pulumi.Input.asInput<List<ControlSolutionTypesItemRetailV2alpha>>(
              map['solutionTypes']),
    );
  }
}
