// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastore_v1_get_index_args_doc}
/// Arguments for getIndex.
/// {@endtemplate}
/// {@macro pulumi_datastore_v1_get_index_args_doc}
class GetIndexArgs {
  final pulumi.Input<String> indexId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexArgs].
  /// [indexId] Required.
  /// [project] Optional.
  GetIndexArgs({required String indexId, String? project})
    : indexId = pulumi.Input.asInput<String>(indexId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'indexId': indexId, 'project': ?project};
  }

  factory GetIndexArgs.fromMap(Map<String, dynamic> map) {
    return GetIndexArgs(
      indexId: map['indexId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
