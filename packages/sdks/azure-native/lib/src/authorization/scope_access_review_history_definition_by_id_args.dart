// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_history_instance.dart';
import 'access_review_recurrence_range.dart';
import 'access_review_scope.dart';

/// {@template pulumi_authorization_scope_access_review_history_definition_by_id_args_doc}
/// The set of arguments for ScopeAccessReviewHistoryDefinitionById.
/// {@endtemplate}
/// {@macro pulumi_authorization_scope_access_review_history_definition_by_id_args_doc}
class ScopeAccessReviewHistoryDefinitionByIdArgs {
  /// Collection of review decisions which the history data should be filtered on. For example if Approve and Deny are supplied the data will only contain review results in which the decision maker approved or denied a review request.
  final pulumi.Input<List<String>>? decisions;
  /// The display name for the history definition.
  final pulumi.Input<String>? displayName;
  /// The id of the access review history definition.
  final pulumi.Input<String>? historyDefinitionId;
  /// Set of access review history instances for this history definition.
  final pulumi.Input<List<AccessReviewHistoryInstance>>? instances;
  /// The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  final pulumi.Input<int>? interval;
  /// Access Review History Definition recurrence settings.
  final pulumi.Input<AccessReviewRecurrenceRange>? range;
  /// The scope of the resource.
  final pulumi.Input<String> scope;
  /// A collection of scopes used when selecting review history data
  final pulumi.Input<List<AccessReviewScope>>? scopes;
  /// The recurrence type : weekly, monthly, etc.
  final pulumi.Input<String>? type;

  /// Creates a new [ScopeAccessReviewHistoryDefinitionByIdArgs].
  /// [decisions] Collection of review decisions which the history data should be filtered on. For example if Approve and Deny are supplied the data will only contain review results in which the decision maker approved or denied a review request.
  /// [displayName] The display name for the history definition.
  /// [historyDefinitionId] The id of the access review history definition.
  /// [instances] Set of access review history instances for this history definition.
  /// [interval] The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  /// [range] Access Review History Definition recurrence settings.
  /// [scope] The scope of the resource.
  /// [scopes] A collection of scopes used when selecting review history data
  /// [type] The recurrence type : weekly, monthly, etc.
  ScopeAccessReviewHistoryDefinitionByIdArgs({
    pulumi.Output<List<String>>? decisions,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? historyDefinitionId,
    pulumi.Output<List<AccessReviewHistoryInstance>>? instances,
    pulumi.Output<int>? interval,
    pulumi.Output<AccessReviewRecurrenceRange>? range,
    required pulumi.Output<String> scope,
    pulumi.Output<List<AccessReviewScope>>? scopes,
    pulumi.Output<String>? type,
  }) :
      decisions = pulumi.Input.asOptionalInput<List<String>>(decisions),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      historyDefinitionId = pulumi.Input.asOptionalInput<String>(historyDefinitionId),
      instances = pulumi.Input.asOptionalInput<List<AccessReviewHistoryInstance>>(instances),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      range = pulumi.Input.asOptionalInput<AccessReviewRecurrenceRange>(range),
      scope = pulumi.Input.asInput<String>(scope),
      scopes = pulumi.Input.asOptionalInput<List<AccessReviewScope>>(scopes),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'decisions': ?decisions,
      'displayName': ?displayName,
      'historyDefinitionId': ?historyDefinitionId,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewHistoryInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<AccessReviewHistoryInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interval': ?interval,
      'range': ?pulumi.Input.mapOptionalInputValue<AccessReviewRecurrenceRange, Map<String, dynamic>>(range, (value) => value.toMap()),
      'scope': scope,
      'scopes': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<AccessReviewScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory ScopeAccessReviewHistoryDefinitionByIdArgs.fromMap(Map<String, dynamic> map) {
    return ScopeAccessReviewHistoryDefinitionByIdArgs(
      decisions: map['decisions'] == null ? null : pulumi.Output.create<List<String>>((map['decisions'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      historyDefinitionId: map['historyDefinitionId'] == null ? null : pulumi.Output.create<String>(map['historyDefinitionId'] as String),
      instances: map['instances'] == null ? null : pulumi.Output.create<List<AccessReviewHistoryInstance>>(pulumi.Input.decodeList<AccessReviewHistoryInstance>(map['instances'], (value) => AccessReviewHistoryInstance.fromMap((value as Map).cast<String, dynamic>()))),
      interval: map['interval'] == null ? null : pulumi.Output.create<int>(map['interval'] as int),
      range: map['range'] == null ? null : pulumi.Output.create<AccessReviewRecurrenceRange>(AccessReviewRecurrenceRange.fromMap((map['range'] as Map).cast<String, dynamic>())),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<AccessReviewScope>>(pulumi.Input.decodeList<AccessReviewScope>(map['scopes'], (value) => AccessReviewScope.fromMap((value as Map).cast<String, dynamic>()))),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

