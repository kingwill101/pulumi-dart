// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1_index_field.dart';
import 'index_api_scope.dart';
import 'index_query_scope.dart';

/// {@template pulumi_firestore_v1_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_firestore_v1_index_args_doc}
class IndexArgs {
  /// The API scope supported by this index.
  final pulumi.Input<IndexApiScope>? apiScope;
  final pulumi.Input<String> collectionGroupId;
  final pulumi.Input<String> databaseId;

  /// The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  final pulumi.Input<List<GoogleFirestoreAdminV1IndexField>>? fields;
  final pulumi.Input<String>? project;

  /// Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  final pulumi.Input<IndexQueryScope>? queryScope;

  /// Creates a new [IndexArgs].
  /// [apiScope] The API scope supported by this index.
  /// [collectionGroupId] Required.
  /// [databaseId] Required.
  /// [fields] The fields supported by this index. For composite indexes, this requires a minimum of 2 and a maximum of 100 fields. The last field entry is always for the field path `__name__`. If, on creation, `__name__` was not specified as the last field, it will be added automatically with the same direction as that of the last field defined. If the final field in a composite index is not directional, the `__name__` will be ordered ASCENDING (unless explicitly specified). For single field indexes, this will always be exactly one entry with a field path equal to the field path of the associated field.
  /// [project] Optional.
  /// [queryScope] Indexes with a collection query scope specified allow queries against a collection that is the child of a specific document, specified at query time, and that has the same collection id. Indexes with a collection group query scope specified allow queries against all collections descended from a specific document, specified at query time, and that have the same collection id as this index.
  IndexArgs({
    IndexApiScope? apiScope,
    required String collectionGroupId,
    required String databaseId,
    List<GoogleFirestoreAdminV1IndexField>? fields,
    String? project,
    IndexQueryScope? queryScope,
  }) : apiScope = pulumi.Input.asOptionalInput<IndexApiScope>(apiScope),
       collectionGroupId = pulumi.Input.asInput<String>(collectionGroupId),
       databaseId = pulumi.Input.asInput<String>(databaseId),
       fields =
           pulumi.Input.asOptionalInput<List<GoogleFirestoreAdminV1IndexField>>(
             fields,
           ),
       project = pulumi.Input.asOptionalInput<String>(project),
       queryScope = pulumi.Input.asOptionalInput<IndexQueryScope>(queryScope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiScope': ?pulumi.Input.mapOptionalInputValue<IndexApiScope, String>(
        apiScope,
        (value) => value.value,
      ),
      'collectionGroupId': collectionGroupId,
      'databaseId': databaseId,
      'fields':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleFirestoreAdminV1IndexField>,
            List<Map<String, dynamic>>
          >(
            fields,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleFirestoreAdminV1IndexField,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'queryScope':
          ?pulumi.Input.mapOptionalInputValue<IndexQueryScope, String>(
            queryScope,
            (value) => value.value,
          ),
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      apiScope: map['apiScope'] == null
          ? null
          : IndexApiScope.fromValue(map['apiScope'] as String),
      collectionGroupId: map['collectionGroupId'] as String,
      databaseId: map['databaseId'] as String,
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<GoogleFirestoreAdminV1IndexField>(
              map['fields'],
              (value) => GoogleFirestoreAdminV1IndexField.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      queryScope: map['queryScope'] == null
          ? null
          : IndexQueryScope.fromValue(map['queryScope'] as String),
    );
  }
}
