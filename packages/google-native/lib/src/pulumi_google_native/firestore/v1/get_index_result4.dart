// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_firestore_admin_v1_index_field_response.dart';

/// Result data returned by getIndex.
class GetIndexResult4 {
  /// The API scope supported by this index.
  final String apiScope;

  /// The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  final List<GoogleFirestoreAdminV1IndexFieldResponse> fields;

  /// A server defined name for this index. The form of this name for composite indexes will be: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}` For single field indexes, this field will be empty.
  final String name;

  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  final String queryScope;

  /// The serving state of the index.
  final String state;

  GetIndexResult4({
    required this.apiScope,
    required this.fields,
    required this.name,
    required this.queryScope,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiScope'] = apiScope;
    map['fields'] = Input.encodeList<GoogleFirestoreAdminV1IndexFieldResponse,
        Map<String, dynamic>>(fields, (value) => value.toMap());
    map['name'] = name;
    map['queryScope'] = queryScope;
    map['state'] = state;
    return map;
  }

  factory GetIndexResult4.fromMap(Map<String, dynamic> map) {
    return GetIndexResult4(
      apiScope: map['apiScope'] as String,
      fields: Input.decodeList<GoogleFirestoreAdminV1IndexFieldResponse>(
          map['fields'],
          (value) => GoogleFirestoreAdminV1IndexFieldResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      queryScope: map['queryScope'] as String,
      state: map['state'] as String,
    );
  }
}
