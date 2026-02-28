// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_search_solution_use_case_item.dart';
import 'control_solution_types_item.dart';
import 'google_cloud_retail_v2_rule.dart';

/// {@template pulumi_retail_v2_control_args_doc}
/// The set of arguments for Control.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_control_args_doc}
class ControlArgs {
  final pulumi.Input<String> catalogId;
  /// Required. The ID to use for the Control, which will become the final component of the Control's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  final pulumi.Input<String> controlId;
  /// The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  /// Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  final pulumi.Input<GoogleCloudRetailV2Rule>? rule;
  /// Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  final pulumi.Input<List<ControlSearchSolutionUseCaseItem>>? searchSolutionUseCase;
  /// Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  final pulumi.Input<List<ControlSolutionTypesItem>> solutionTypes;

  /// Creates a new [ControlArgs].
  /// [catalogId] Required.
  /// [controlId] Required. The ID to use for the Control, which will become the final component of the Control's resource name. This value should be 4-63 characters, and valid characters are /a-z-_/.
  /// [displayName] The human readable control display name. Used in Retail UI. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is thrown.
  /// [location] Optional.
  /// [name] Immutable. Fully qualified name `projects/*/locations/global/catalogs/*/controls/*`
  /// [project] Optional.
  /// [rule] A rule control - a condition-action pair. Enacts a set action when the condition is triggered. For example: Boost "gShoe" when query full matches "Running Shoes".
  /// [searchSolutionUseCase] Specifies the use case for the control. Affects what condition fields can be set. Only settable by search controls. Will default to SEARCH_SOLUTION_USE_CASE_SEARCH if not specified. Currently only allow one search_solution_use_case per control.
  /// [solutionTypes] Immutable. The solution types that the control is used for. Currently we support setting only one type of solution at creation time. Only `SOLUTION_TYPE_SEARCH` value is supported at the moment. If no solution type is provided at creation time, will default to SOLUTION_TYPE_SEARCH.
  ControlArgs({
    required String catalogId,
    required String controlId,
    required String displayName,
    String? location,
    String? name,
    String? project,
    GoogleCloudRetailV2Rule? rule,
    List<ControlSearchSolutionUseCaseItem>? searchSolutionUseCase,
    required List<ControlSolutionTypesItem> solutionTypes,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      controlId = pulumi.Input.asInput<String>(controlId),
      displayName = pulumi.Input.asInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rule = pulumi.Input.asOptionalInput<GoogleCloudRetailV2Rule>(rule),
      searchSolutionUseCase = pulumi.Input.asOptionalInput<List<ControlSearchSolutionUseCaseItem>>(searchSolutionUseCase),
      solutionTypes = pulumi.Input.asInput<List<ControlSolutionTypesItem>>(solutionTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'controlId': controlId,
      'displayName': displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rule': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2Rule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'searchSolutionUseCase': ?pulumi.Input.mapOptionalInputValue<List<ControlSearchSolutionUseCaseItem>, List<String>>(searchSolutionUseCase, (value) => pulumi.Input.encodeList<ControlSearchSolutionUseCaseItem, String>(value, (value) => value.value)),
      'solutionTypes': pulumi.Input.mapInputValue<List<ControlSolutionTypesItem>, List<String>>(solutionTypes, (value) => pulumi.Input.encodeList<ControlSolutionTypesItem, String>(value, (value) => value.value)),
    };
  }

  factory ControlArgs.fromMap(Map<String, dynamic> map) {
    return ControlArgs(
      catalogId: map['catalogId'] as String,
      controlId: map['controlId'] as String,
      displayName: map['displayName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rule: map['rule'] == null ? null : GoogleCloudRetailV2Rule.fromMap((map['rule'] as Map).cast<String, dynamic>()),
      searchSolutionUseCase: map['searchSolutionUseCase'] == null ? null : pulumi.Input.decodeList<ControlSearchSolutionUseCaseItem>(map['searchSolutionUseCase'], (value) => ControlSearchSolutionUseCaseItem.fromValue(value as String)),
      solutionTypes: pulumi.Input.decodeList<ControlSolutionTypesItem>(map['solutionTypes'], (value) => ControlSolutionTypesItem.fromValue(value as String)),
    );
  }
}

