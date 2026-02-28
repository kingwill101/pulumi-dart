// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta2_index_field.dart';
import 'index_query_scope_firestore_v1beta2.dart';

/// {@template pulumi_firestore_v1beta2_index_firestore_v1beta2_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1beta2_index_firestore_v1beta2_args_doc}
class IndexFirestoreV1beta2Args {
  final pulumi.Input<String> collectionGroupId;
  final pulumi.Input<String> databaseId;

  /// The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  final pulumi.Input<List<GoogleFirestoreAdminV1beta2IndexField>>? fields;
  final pulumi.Input<String>? project;

  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  final pulumi.Input<IndexQueryScopeFirestoreV1beta2>? queryScope;

  /// Creates a new [IndexFirestoreV1beta2Args].
  /// [collectionGroupId] Required.
  /// [databaseId] Required.
  /// [fields] The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  /// [project] Optional.
  /// [queryScope] Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  IndexFirestoreV1beta2Args({
    required String collectionGroupId,
    required String databaseId,
    List<GoogleFirestoreAdminV1beta2IndexField>? fields,
    String? project,
    IndexQueryScopeFirestoreV1beta2? queryScope,
  })  : collectionGroupId = pulumi.Input.asInput<String>(collectionGroupId),
        databaseId = pulumi.Input.asInput<String>(databaseId),
        fields = pulumi.Input.asOptionalInput<
            List<GoogleFirestoreAdminV1beta2IndexField>>(fields),
        project = pulumi.Input.asOptionalInput<String>(project),
        queryScope =
            pulumi.Input.asOptionalInput<IndexQueryScopeFirestoreV1beta2>(
                queryScope);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionGroupId'] = collectionGroupId;
    map['databaseId'] = databaseId;
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleFirestoreAdminV1beta2IndexField>,
              List<Map<String, dynamic>>>(
          fieldsValue,
          (value) => pulumi.Input.encodeList<
              GoogleFirestoreAdminV1beta2IndexField,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryScopeValue = queryScope;
    if (queryScopeValue != null) {
      map['queryScope'] = pulumi.Input.mapOptionalInputValue<
          IndexQueryScopeFirestoreV1beta2,
          String>(queryScopeValue, (value) => value.value);
    }
    return map;
  }

  factory IndexFirestoreV1beta2Args.fromMap(Map<String, dynamic> map) {
    return IndexFirestoreV1beta2Args(
      collectionGroupId: map['collectionGroupId'] as String,
      databaseId: map['databaseId'] as String,
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<GoogleFirestoreAdminV1beta2IndexField>(
              map['fields'],
              (value) => GoogleFirestoreAdminV1beta2IndexField.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      queryScope: map['queryScope'] == null
          ? null
          : IndexQueryScopeFirestoreV1beta2.fromValue(
              map['queryScope'] as String),
    );
  }
}
