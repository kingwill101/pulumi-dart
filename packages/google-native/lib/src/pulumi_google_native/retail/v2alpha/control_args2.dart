// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'control_search_solution_use_case_item2.dart';
import 'control_solution_types_item2.dart';
import 'google_cloud_retail_v2alpha_rule.dart';
import 'google_cloud_retail_v2alpha_search_request_facet_spec.dart';

/// The set of arguments for Control.
class ControlArgs2 {
  final Input<String> catalogId;

  /// Required. The ID to use for the Control, which will become the final component of the Control's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  final Input<String> controlId;

  /// The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  final Input<String> displayName;

  /// A facet specification to perform faceted search. Note that this field is deprecated and will throw NOT_IMPLEMENTED if used for creating a control.
  final Input<GoogleCloudRetailV2alphaSearchRequestFacetSpec>? facetSpec;
  final Input<String>? location;

  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  final Input<String>? name;
  final Input<String>? project;

  /// A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  final Input<GoogleCloudRetailV2alphaRule>? rule;

  /// Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  final Input<List<ControlSearchSolutionUseCaseItem2>>? searchSolutionUseCase;

  /// Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  final Input<List<ControlSolutionTypesItem2>> solutionTypes;

  ControlArgs2({
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
      map['facetSpec'] = Input.mapOptionalInputValue<
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
      map['rule'] = Input.mapOptionalInputValue<GoogleCloudRetailV2alphaRule,
          Map<String, dynamic>>(ruleValue, (value) => value.toMap());
    }
    final searchSolutionUseCaseValue = searchSolutionUseCase;
    if (searchSolutionUseCaseValue != null) {
      map['searchSolutionUseCase'] = Input.mapOptionalInputValue<
              List<ControlSearchSolutionUseCaseItem2>, List<String>>(
          searchSolutionUseCaseValue,
          (value) =>
              Input.encodeList<ControlSearchSolutionUseCaseItem2, String>(
                  value, (value) => value.value));
    }
    map['solutionTypes'] =
        Input.mapInputValue<List<ControlSolutionTypesItem2>, List<String>>(
            solutionTypes,
            (value) => Input.encodeList<ControlSolutionTypesItem2, String>(
                value, (value) => value.value));
    return map;
  }

  factory ControlArgs2.fromMap(Map<String, dynamic> map) {
    return ControlArgs2(
      catalogId: Input.asInput<String>(map['catalogId']),
      controlId: Input.asInput<String>(map['controlId']),
      displayName: Input.asInput<String>(map['displayName']),
      facetSpec:
          Input.asOptionalInput<GoogleCloudRetailV2alphaSearchRequestFacetSpec>(
              map['facetSpec']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rule: Input.asOptionalInput<GoogleCloudRetailV2alphaRule>(map['rule']),
      searchSolutionUseCase:
          Input.asOptionalInput<List<ControlSearchSolutionUseCaseItem2>>(
              map['searchSolutionUseCase']),
      solutionTypes:
          Input.asInput<List<ControlSolutionTypesItem2>>(map['solutionTypes']),
    );
  }
}
