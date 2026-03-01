// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_scope_access_review_schedule_definition_by_id_args_doc}
/// Arguments for getScopeAccessReviewScheduleDefinitionById.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_scope_access_review_schedule_definition_by_id_args_doc}
class GetScopeAccessReviewScheduleDefinitionByIdArgs {
  /// The id of the access review schedule definition.
  final pulumi.Input<String> scheduleDefinitionId;
  /// The scope of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetScopeAccessReviewScheduleDefinitionByIdArgs].
  /// [scheduleDefinitionId] The id of the access review schedule definition.
  /// [scope] The scope of the resource.
  GetScopeAccessReviewScheduleDefinitionByIdArgs({
    required String scheduleDefinitionId,
    required String scope,
  }) :
      scheduleDefinitionId = pulumi.Input.asInput<String>(scheduleDefinitionId),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleDefinitionId': scheduleDefinitionId,
      'scope': scope,
    };
  }

  factory GetScopeAccessReviewScheduleDefinitionByIdArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeAccessReviewScheduleDefinitionByIdArgs(
      scheduleDefinitionId: map['scheduleDefinitionId'] as String,
      scope: map['scope'] as String,
    );
  }
}

