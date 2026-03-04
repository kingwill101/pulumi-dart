// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_access_review_history_definition_by_id_args_doc}
/// Arguments for getAccessReviewHistoryDefinitionById.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_access_review_history_definition_by_id_args_doc}
class GetAccessReviewHistoryDefinitionByIdArgs {
  /// The id of the access review history definition.
  final pulumi.Input<String> historyDefinitionId;

  /// Creates a new [GetAccessReviewHistoryDefinitionByIdArgs].
  /// [historyDefinitionId] The id of the access review history definition.
  GetAccessReviewHistoryDefinitionByIdArgs({required this.historyDefinitionId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'historyDefinitionId': historyDefinitionId};
  }

  factory GetAccessReviewHistoryDefinitionByIdArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAccessReviewHistoryDefinitionByIdArgs(
      historyDefinitionId: pulumi.Input.fromValue(
        map['historyDefinitionId'] as String,
      ),
    );
  }
}
