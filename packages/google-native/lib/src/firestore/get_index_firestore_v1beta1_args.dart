// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firestore_v1beta1_get_index_firestore_v1beta1_args_doc}
/// Arguments for getIndex.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1beta1_get_index_firestore_v1beta1_args_doc}
class GetIndexFirestoreV1beta1Args {
  final pulumi.Input<String> databaseId;
  final pulumi.Input<String> indexId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIndexFirestoreV1beta1Args].
  /// [databaseId] Required.
  /// [indexId] Required.
  /// [project] Optional.
  GetIndexFirestoreV1beta1Args({
    required String databaseId,
    required String indexId,
    String? project,
  })  : databaseId = pulumi.Input.asInput<String>(databaseId),
        indexId = pulumi.Input.asInput<String>(indexId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    map['indexId'] = indexId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetIndexFirestoreV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetIndexFirestoreV1beta1Args(
      databaseId: map['databaseId'] as String,
      indexId: map['indexId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
