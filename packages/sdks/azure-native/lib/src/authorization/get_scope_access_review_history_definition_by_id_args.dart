// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_scope_access_review_history_definition_by_id_args_doc}
/// Arguments for getScopeAccessReviewHistoryDefinitionById.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_scope_access_review_history_definition_by_id_args_doc}
class GetScopeAccessReviewHistoryDefinitionByIdArgs {
  /// The id of the access review history definition.
  final pulumi.Input<String> historyDefinitionId;
  /// The scope of the resource.
  final pulumi.Input<String> scope;

  /// Creates a new [GetScopeAccessReviewHistoryDefinitionByIdArgs].
  /// [historyDefinitionId] The id of the access review history definition.
  /// [scope] The scope of the resource.
  GetScopeAccessReviewHistoryDefinitionByIdArgs({
    required this.historyDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historyDefinitionId': historyDefinitionId,
      'scope': scope,
    };
  }

  factory GetScopeAccessReviewHistoryDefinitionByIdArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeAccessReviewHistoryDefinitionByIdArgs(
      historyDefinitionId: (map['historyDefinitionId'] as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

