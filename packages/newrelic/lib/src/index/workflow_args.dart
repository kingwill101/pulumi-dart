// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_destination.dart';
import 'workflow_enrichments.dart';
import 'workflow_issues_filter.dart';

/// {@template pulumi_index_workflow_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_index_workflow_workflow_args_doc}
class WorkflowArgs {
  /// Determines the New Relic account in which the workflow is created. Defaults to the account defined in the provider section.
  final pulumi.Input<String>? accountId;
  /// Notification configuration. See Nested destination blocks below for details.
  final pulumi.Input<List<WorkflowDestination>> destinations;
  /// **DEPRECATED** Whether destinations are enabled. Please use `enabled` instead:
  /// these two are different flags, but they are functionally identical. Defaults to true.
  final pulumi.Input<bool>? destinationsEnabled;
  /// Whether workflow is enabled. Defaults to true.
  final pulumi.Input<bool>? enabled;
  /// Workflow's enrichments. See Nested enrichments blocks below for details.
  final pulumi.Input<WorkflowEnrichments>? enrichments;
  /// Whether enrichments are enabled. Defaults to true.
  final pulumi.Input<bool>? enrichmentsEnabled;
  /// A filter used to identify issues handled by this workflow. See Nested issues_filter blocks below for details.
  final pulumi.Input<WorkflowIssuesFilter> issuesFilter;
  /// How to handle muted issues. See Muting Rules below for details.
  final pulumi.Input<String> mutingRulesHandling;
  /// The name of the workflow.
  final pulumi.Input<String>? name;

  /// Creates a new [WorkflowArgs].
  /// [accountId] Determines the New Relic account in which the workflow is created. Defaults to the account defined in the provider section.
  /// [destinations] Notification configuration. See Nested destination blocks below for details.
  /// [destinationsEnabled] **DEPRECATED** Whether destinations are enabled. Please use `enabled` instead:
  /// [enabled] Whether workflow is enabled. Defaults to true.
  /// [enrichments] Workflow's enrichments. See Nested enrichments blocks below for details.
  /// [enrichmentsEnabled] Whether enrichments are enabled. Defaults to true.
  /// [issuesFilter] A filter used to identify issues handled by this workflow. See Nested issues_filter blocks below for details.
  /// [mutingRulesHandling] How to handle muted issues. See Muting Rules below for details.
  /// [name] The name of the workflow.
  WorkflowArgs({
    String? accountId,
    required List<WorkflowDestination> destinations,
    bool? destinationsEnabled,
    bool? enabled,
    WorkflowEnrichments? enrichments,
    bool? enrichmentsEnabled,
    required WorkflowIssuesFilter issuesFilter,
    required String mutingRulesHandling,
    String? name,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      destinations = pulumi.Input.asInput<List<WorkflowDestination>>(destinations),
      destinationsEnabled = pulumi.Input.asOptionalInput<bool>(destinationsEnabled),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      enrichments = pulumi.Input.asOptionalInput<WorkflowEnrichments>(enrichments),
      enrichmentsEnabled = pulumi.Input.asOptionalInput<bool>(enrichmentsEnabled),
      issuesFilter = pulumi.Input.asInput<WorkflowIssuesFilter>(issuesFilter),
      mutingRulesHandling = pulumi.Input.asInput<String>(mutingRulesHandling),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'destinations': pulumi.Input.mapInputValue<List<WorkflowDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<WorkflowDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationsEnabled': ?destinationsEnabled,
      'enabled': ?enabled,
      'enrichments': ?pulumi.Input.mapOptionalInputValue<WorkflowEnrichments, Map<String, dynamic>>(enrichments, (value) => value.toMap()),
      'enrichmentsEnabled': ?enrichmentsEnabled,
      'issuesFilter': pulumi.Input.mapInputValue<WorkflowIssuesFilter, Map<String, dynamic>>(issuesFilter, (value) => value.toMap()),
      'mutingRulesHandling': mutingRulesHandling,
      'name': ?name,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      destinations: pulumi.Input.decodeList<WorkflowDestination>(map['destinations'], (value) => WorkflowDestination.fromMap((value as Map).cast<String, dynamic>())),
      destinationsEnabled: map['destinationsEnabled'] == null ? null : map['destinationsEnabled'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      enrichments: map['enrichments'] == null ? null : WorkflowEnrichments.fromMap((map['enrichments'] as Map).cast<String, dynamic>()),
      enrichmentsEnabled: map['enrichmentsEnabled'] == null ? null : map['enrichmentsEnabled'] as bool,
      issuesFilter: WorkflowIssuesFilter.fromMap((map['issuesFilter'] as Map).cast<String, dynamic>()),
      mutingRulesHandling: map['mutingRulesHandling'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

