// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_history_instance.dart';
import 'access_review_recurrence_range.dart';
import 'access_review_scope.dart';

/// {@template pulumi_authorization_access_review_history_definition_by_id_args_doc}
/// The set of arguments for AccessReviewHistoryDefinitionById.
/// {@endtemplate}
/// {@macro pulumi_authorization_access_review_history_definition_by_id_args_doc}
class AccessReviewHistoryDefinitionByIdArgs {
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
  /// A collection of scopes used when selecting review history data
  final pulumi.Input<List<AccessReviewScope>>? scopes;
  /// The recurrence type : weekly, monthly, etc.
  final pulumi.Input<String>? type;

  /// Creates a new [AccessReviewHistoryDefinitionByIdArgs].
  /// [decisions] Collection of review decisions which the history data should be filtered on. For example if Approve and Deny are supplied the data will only contain review results in which the decision maker approved or denied a review request.
  /// [displayName] The display name for the history definition.
  /// [historyDefinitionId] The id of the access review history definition.
  /// [instances] Set of access review history instances for this history definition.
  /// [interval] The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  /// [range] Access Review History Definition recurrence settings.
  /// [scopes] A collection of scopes used when selecting review history data
  /// [type] The recurrence type : weekly, monthly, etc.
  AccessReviewHistoryDefinitionByIdArgs({
    this.decisions,
    this.displayName,
    this.historyDefinitionId,
    this.instances,
    this.interval,
    this.range,
    this.scopes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'decisions': ?decisions,
      'displayName': ?displayName,
      'historyDefinitionId': ?historyDefinitionId,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewHistoryInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<AccessReviewHistoryInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interval': ?interval,
      'range': ?pulumi.Input.mapOptionalInputValue<AccessReviewRecurrenceRange, Map<String, dynamic>>(range, (value) => value.toMap()),
      'scopes': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<AccessReviewScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory AccessReviewHistoryDefinitionByIdArgs.fromMap(Map<String, dynamic> map) {
    return AccessReviewHistoryDefinitionByIdArgs(
      decisions: map['decisions'] == null ? null : ((map['decisions']! as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      historyDefinitionId: map['historyDefinitionId'] == null ? null : (map['historyDefinitionId']! as String).input(),
      instances: map['instances'] == null ? null : (pulumi.Input.decodeList<AccessReviewHistoryInstance>(map['instances']!, (value) => AccessReviewHistoryInstance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      range: map['range'] == null ? null : (AccessReviewRecurrenceRange.fromMap((map['range']! as Map).cast<String, dynamic>())).input(),
      scopes: map['scopes'] == null ? null : (pulumi.Input.decodeList<AccessReviewScope>(map['scopes']!, (value) => AccessReviewScope.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

