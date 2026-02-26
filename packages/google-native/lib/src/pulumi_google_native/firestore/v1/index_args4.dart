// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_firestore_admin_v1_index_field.dart';
import 'index_api_scope.dart';
import 'index_query_scope.dart';

/// The set of arguments for Index.
class IndexArgs4 {
  /// The API scope supported by this index.
  final Input<IndexApiScope>? apiScope;
  final Input<String> collectionGroupId;
  final Input<String> databaseId;

  /// The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  final Input<List<GoogleFirestoreAdminV1IndexField>>? fields;
  final Input<String>? project;

  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  final Input<IndexQueryScope>? queryScope;

  IndexArgs4({
    this.apiScope,
    required this.collectionGroupId,
    required this.databaseId,
    this.fields,
    this.project,
    this.queryScope,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiScopeValue = apiScope;
    if (apiScopeValue != null) {
      map['apiScope'] = Input.mapOptionalInputValue<IndexApiScope, String>(
          apiScopeValue, (value) => value.value);
    }
    map['collectionGroupId'] = collectionGroupId;
    map['databaseId'] = databaseId;
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = Input.mapOptionalInputValue<
              List<GoogleFirestoreAdminV1IndexField>,
              List<Map<String, dynamic>>>(
          fieldsValue,
          (value) => Input.encodeList<GoogleFirestoreAdminV1IndexField,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryScopeValue = queryScope;
    if (queryScopeValue != null) {
      map['queryScope'] = Input.mapOptionalInputValue<IndexQueryScope, String>(
          queryScopeValue, (value) => value.value);
    }
    return map;
  }

  factory IndexArgs4.fromMap(Map<String, dynamic> map) {
    return IndexArgs4(
      apiScope: Input.asOptionalInput<IndexApiScope>(map['apiScope']),
      collectionGroupId: Input.asInput<String>(map['collectionGroupId']),
      databaseId: Input.asInput<String>(map['databaseId']),
      fields: Input.asOptionalInput<List<GoogleFirestoreAdminV1IndexField>>(
          map['fields']),
      project: Input.asOptionalInput<String>(map['project']),
      queryScope: Input.asOptionalInput<IndexQueryScope>(map['queryScope']),
    );
  }
}
