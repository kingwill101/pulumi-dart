// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_access_review_schedule_definition_by_id_args_doc}
/// Arguments for getAccessReviewScheduleDefinitionById.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_access_review_schedule_definition_by_id_args_doc}
class GetAccessReviewScheduleDefinitionByIdArgs {
  /// The id of the access review schedule definition.
  final pulumi.Input<String> scheduleDefinitionId;

  /// Creates a new [GetAccessReviewScheduleDefinitionByIdArgs].
  /// [scheduleDefinitionId] The id of the access review schedule definition.
  const GetAccessReviewScheduleDefinitionByIdArgs({
    required this.scheduleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduleDefinitionId': scheduleDefinitionId,
    };
  }

  factory GetAccessReviewScheduleDefinitionByIdArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessReviewScheduleDefinitionByIdArgs(
      scheduleDefinitionId: pulumi.Input.fromValue(map['scheduleDefinitionId'] as String),
    );
  }
}

