// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_firestore_admin_v1beta2_index_field.dart';
import 'index_query_scope2.dart';

/// The set of arguments for Index.
class IndexArgs6 {
  final Input<String> collectionGroupId;
  final Input<String> databaseId;

  /// The fields supported by this index. For composite indexes, this is always 2 or more fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  final Input<List<GoogleFirestoreAdminV1beta2IndexField>>? fields;
  final Input<String>? project;

  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  final Input<IndexQueryScope2>? queryScope;

  IndexArgs6({
    required this.collectionGroupId,
    required this.databaseId,
    this.fields,
    this.project,
    this.queryScope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionGroupId'] = collectionGroupId;
    map['databaseId'] = databaseId;
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.mapOptionalInputValue<
              List<GoogleFirestoreAdminV1beta2IndexField>,
              List<Map<String, dynamic>>>(
          fieldsValue,
          (value) => Input.encodeList<GoogleFirestoreAdminV1beta2IndexField,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryScopeValue = queryScope;
    if (queryScopeValue != null) {
      map['queryScope'] = Input.mapOptionalInputValue<IndexQueryScope2, String>(
          queryScopeValue, (value) => value.value);
    }
    return map;
  }

  factory IndexArgs6.fromMap(Map<String, dynamic> map) {
    return IndexArgs6(
      collectionGroupId: Input.asInput<String>(map['collectionGroupId']),
      databaseId: Input.asInput<String>(map['databaseId']),
      fields:
          Input.asOptionalInput<List<GoogleFirestoreAdminV1beta2IndexField>>(
              map['fields']),
      project: Input.asOptionalInput<String>(map['project']),
      queryScope: Input.asOptionalInput<IndexQueryScope2>(map['queryScope']),
    );
  }
}
