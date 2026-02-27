// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../control_boost_action/control_boost_action.dart';
import '../control_condition/control_condition.dart';
import '../control_filter_action/control_filter_action.dart';
import '../control_promote_action/control_promote_action.dart';
import '../control_redirect_action/control_redirect_action.dart';
import '../control_synonyms_action/control_synonyms_action.dart';

/// The set of arguments for Control.
class ControlArgs {
  /// Changes the returned order of results.
  /// Structure is documented below.
  final Input<ControlBoostAction>? boostAction;

  /// The collection ID. Currently only accepts "default_collection".
  final Input<String>? collectionId;

  /// The conditions under which the control is active.
  /// Structure is documented below.
  final Input<List<ControlCondition>>? conditions;

  /// The unique id of the control.
  final Input<String> controlId;

  /// The display name of the control. This field must be a UTF-8 encoded
  /// string with a length limit of 128 characters.
  final Input<String> displayName;

  /// The engine to add the control to.
  final Input<String> engineId;

  /// Removes entries from returned results.
  /// Structure is documented below.
  final Input<ControlFilterAction>? filterAction;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Promotes a specified link for a query.
  /// Structure is documented below.
  final Input<ControlPromoteAction>? promoteAction;

  /// Redirects to a specified URI.
  /// Structure is documented below.
  final Input<ControlRedirectAction>? redirectAction;

  /// The solution type that the control belongs to.
  /// Possible values are: `SOLUTION_TYPE_RECOMMENDATION`, `SOLUTION_TYPE_SEARCH`, `SOLUTION_TYPE_CHAT`, `SOLUTION_TYPE_GENERATIVE_CHAT`.
  final Input<String> solutionType;

  /// Associates queries with each other.
  /// Structure is documented below.
  final Input<ControlSynonymsAction>? synonymsAction;

  /// The use cases that the control is used for.
  /// Each value may be one of: `SEARCH_USE_CASE_SEARCH`, `SEARCH_USE_CASE_BROWSE`.
  final Input<List<String>>? useCases;

  ControlArgs({
    this.boostAction,
    this.collectionId,
    this.conditions,
    required this.controlId,
    required this.displayName,
    required this.engineId,
    this.filterAction,
    required this.location,
    this.project,
    this.promoteAction,
    this.redirectAction,
    required this.solutionType,
    this.synonymsAction,
    this.useCases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boostActionValue = boostAction;
    if (boostActionValue != null) {
      map['boostAction'] =
          Input.mapOptionalInputValue<ControlBoostAction, Map<String, dynamic>>(
              boostActionValue, (value) => value.toMap());
    }
    final collectionIdValue = collectionId;
    if (collectionIdValue != null) {
      map['collectionId'] = collectionIdValue;
    }
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = Input.mapOptionalInputValue<List<ControlCondition>,
              List<Map<String, dynamic>>>(
          conditionsValue,
          (value) => Input.encodeList<ControlCondition, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['controlId'] = controlId;
    map['displayName'] = displayName;
    map['engineId'] = engineId;
    final filterActionValue = filterAction;
    if (filterActionValue != null) {
      map['filterAction'] = Input.mapOptionalInputValue<ControlFilterAction,
          Map<String, dynamic>>(filterActionValue, (value) => value.toMap());
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final promoteActionValue = promoteAction;
    if (promoteActionValue != null) {
      map['promoteAction'] = Input.mapOptionalInputValue<ControlPromoteAction,
          Map<String, dynamic>>(promoteActionValue, (value) => value.toMap());
    }
    final redirectActionValue = redirectAction;
    if (redirectActionValue != null) {
      map['redirectAction'] = Input.mapOptionalInputValue<ControlRedirectAction,
          Map<String, dynamic>>(redirectActionValue, (value) => value.toMap());
    }
    map['solutionType'] = solutionType;
    final synonymsActionValue = synonymsAction;
    if (synonymsActionValue != null) {
      map['synonymsAction'] = Input.mapOptionalInputValue<ControlSynonymsAction,
          Map<String, dynamic>>(synonymsActionValue, (value) => value.toMap());
    }
    final useCasesValue = useCases;
    if (useCasesValue != null) {
      map['useCases'] = useCasesValue;
    }
    return map;
  }

  factory ControlArgs.fromMap(Map<String, dynamic> map) {
    return ControlArgs(
      boostAction:
          Input.asOptionalInput<ControlBoostAction>(map['boostAction']),
      collectionId: Input.asOptionalInput<String>(map['collectionId']),
      conditions:
          Input.asOptionalInput<List<ControlCondition>>(map['conditions']),
      controlId: Input.asInput<String>(map['controlId']),
      displayName: Input.asInput<String>(map['displayName']),
      engineId: Input.asInput<String>(map['engineId']),
      filterAction:
          Input.asOptionalInput<ControlFilterAction>(map['filterAction']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      promoteAction:
          Input.asOptionalInput<ControlPromoteAction>(map['promoteAction']),
      redirectAction:
          Input.asOptionalInput<ControlRedirectAction>(map['redirectAction']),
      solutionType: Input.asInput<String>(map['solutionType']),
      synonymsAction:
          Input.asOptionalInput<ControlSynonymsAction>(map['synonymsAction']),
      useCases: Input.asOptionalInput<List<String>>(map['useCases']),
    );
  }
}
