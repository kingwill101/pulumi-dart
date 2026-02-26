// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rollout_kind_error_budget/rollout_kind_error_budget.dart';

/// The set of arguments for RolloutKind.
class RolloutKindArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The configuration for error budget. If the number of failed units exceeds
  /// max(allowed_count,<span pulumi-lang-nodejs=" allowedRatio " pulumi-lang-dotnet=" AllowedRatio " pulumi-lang-go=" allowedRatio " pulumi-lang-python=" allowed_ratio " pulumi-lang-yaml=" allowedRatio " pulumi-lang-java=" allowedRatio "> allowed_ratio </span>* total_units), the rollout will be paused.
  /// Structure is documented below.
  final Input<RolloutKindErrorBudget>? errorBudget;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The ID value for the new rollout kind.
  final Input<String> rolloutKindId;

  /// The strategy used for executing a Rollout. This is a required field.
  /// There are two supported values strategies which are used to control a rollout.
  /// - "Google.Cloud.Simple.AllAtOnce"
  /// - "Google.Cloud.Simple.OneLocationAtATime"
  /// A rollout with one of these simple strategies will rollout across
  /// all locations defined in the associated UnitKind's Saas Locations.
  final Input<String>? rolloutOrchestrationStrategy;

  /// CEL(https://github.com/google/cel-spec) formatted filter string against
  /// Unit. The filter will be applied to determine the eligible unit population.
  /// This filter can only reduce, but not expand the scope of the rollout.
  final Input<String>? unitFilter;

  /// UnitKind that this rollout kind corresponds to. Rollouts stemming from this
  /// rollout kind will target the units of this unit kind. In other words, this
  /// defines the population of target units to be upgraded by rollouts.
  final Input<String> unitKind;

  /// The config for updating the unit kind. By default, the unit kind will be
  /// updated on the rollout start.
  /// Possible values:
  /// UPDATE_UNIT_KIND_STRATEGY_ON_START
  /// UPDATE_UNIT_KIND_STRATEGY_NEVER
  /// Possible values are: `UPDATE_UNIT_KIND_STRATEGY_ON_START`, `UPDATE_UNIT_KIND_STRATEGY_NEVER`.
  final Input<String>? updateUnitKindStrategy;

  RolloutKindArgs({
    this.annotations,
    this.errorBudget,
    this.labels,
    required this.location,
    this.project,
    required this.rolloutKindId,
    this.rolloutOrchestrationStrategy,
    this.unitFilter,
    required this.unitKind,
    this.updateUnitKindStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final errorBudgetValue = errorBudget;
    if (errorBudgetValue != null) {
      map['errorBudget'] = Input.mapOptionalInputValue<RolloutKindErrorBudget,
          Map<String, dynamic>>(errorBudgetValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['rolloutKindId'] = rolloutKindId;
    final rolloutOrchestrationStrategyValue = rolloutOrchestrationStrategy;
    if (rolloutOrchestrationStrategyValue != null) {
      map['rolloutOrchestrationStrategy'] = rolloutOrchestrationStrategyValue;
    }
    final unitFilterValue = unitFilter;
    if (unitFilterValue != null) {
      map['unitFilter'] = unitFilterValue;
    }
    map['unitKind'] = unitKind;
    final updateUnitKindStrategyValue = updateUnitKindStrategy;
    if (updateUnitKindStrategyValue != null) {
      map['updateUnitKindStrategy'] = updateUnitKindStrategyValue;
    }
    return map;
  }

  factory RolloutKindArgs.fromMap(Map<String, dynamic> map) {
    return RolloutKindArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      errorBudget:
          Input.asOptionalInput<RolloutKindErrorBudget>(map['errorBudget']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      rolloutKindId: Input.asInput<String>(map['rolloutKindId']),
      rolloutOrchestrationStrategy:
          Input.asOptionalInput<String>(map['rolloutOrchestrationStrategy']),
      unitFilter: Input.asOptionalInput<String>(map['unitFilter']),
      unitKind: Input.asInput<String>(map['unitKind']),
      updateUnitKindStrategy:
          Input.asOptionalInput<String>(map['updateUnitKindStrategy']),
    );
  }
}
