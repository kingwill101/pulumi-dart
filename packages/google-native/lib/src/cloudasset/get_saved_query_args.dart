// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudasset_v1_get_saved_query_args_doc}
/// Arguments for getSavedQuery.
/// {@endtemplate}
/// {@macro pulumi_cloudasset_v1_get_saved_query_args_doc}
class GetSavedQueryArgs {
  final pulumi.Input<String> savedQueryId;
  final pulumi.Input<String> v1Id;
  final pulumi.Input<String> v1Id1;

  /// Creates a new [GetSavedQueryArgs].
  /// [savedQueryId] Required.
  /// [v1Id] Required.
  /// [v1Id1] Required.
  GetSavedQueryArgs({
    required String savedQueryId,
    required String v1Id,
    required String v1Id1,
  }) :
      savedQueryId = pulumi.Input.asInput<String>(savedQueryId),
      v1Id = pulumi.Input.asInput<String>(v1Id),
      v1Id1 = pulumi.Input.asInput<String>(v1Id1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'savedQueryId': savedQueryId,
      'v1Id': v1Id,
      'v1Id1': v1Id1,
    };
  }

  factory GetSavedQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetSavedQueryArgs(
      savedQueryId: map['savedQueryId'] as String,
      v1Id: map['v1Id'] as String,
      v1Id1: map['v1Id1'] as String,
    );
  }
}

