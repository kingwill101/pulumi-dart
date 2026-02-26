// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../index_field/index_field.dart';

/// The set of arguments for Index.
class IndexArgs {
  /// The API scope at which a query is run.
  /// Default value is `ANY_API`.
  /// Possible values are: `ANY_API`, `DATASTORE_MODE_API`, `MONGODB_COMPATIBLE_API`.
  final Input<String>? apiScope;

  /// The collection being indexed.
  final Input<String> collection;

  /// The Firestore database id. Defaults to `"(default)"`.
  final Input<String>? database;

  /// The density configuration for this index.
  /// Possible values are: `SPARSE_ALL`, `SPARSE_ANY`, `DENSE`.
  final Input<String>? density;

  /// The fields supported by this index. The last non-stored field entry is
  /// always for the field path `__name__`. If, on creation, `__name__` was not
  /// specified as the last field, it will be added automatically with the same
  /// direction as that of the last field defined. If the final field in a
  /// composite index is not directional, the `__name__` will be ordered
  /// `"ASCENDING"` (unless explicitly specified otherwise).
  /// Structure is documented below.
  final Input<List<IndexField>> fields;

  /// Optional. Whether the index is multikey. By default, the index is not multikey. For non-multikey indexes, none of the paths in the index definition reach or traverse an array, except via an explicit array index. For multikey indexes, at most one of the paths in the index definition reach or traverse an array, except via an explicit array index. Violations will result in errors. Note this field only applies to indexes with MONGODB_COMPATIBLE_API ApiScope.
  final Input<bool>? multikey;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The scope at which a query is run.
  /// Default value is `COLLECTION`.
  /// Possible values are: `COLLECTION`, `COLLECTION_GROUP`, `COLLECTION_RECURSIVE`.
  final Input<String>? queryScope;

  /// Whether it is an unique index. Unique index ensures all values for the indexed field(s) are unique across documents.
  final Input<bool>? unique;

  IndexArgs({
    this.apiScope,
    required this.collection,
    this.database,
    this.density,
    required this.fields,
    this.multikey,
    this.project,
    this.queryScope,
    this.unique,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiScopeValue = apiScope;
    if (apiScopeValue != null) {
      map['apiScope'] = apiScopeValue;
    }
    map['collection'] = collection;
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    final densityValue = density;
    if (densityValue != null) {
      map['density'] = densityValue;
    }
    map['fields'] =
        Input.mapInputValue<List<IndexField>, List<Map<String, dynamic>>>(
            fields,
            (value) => Input.encodeList<IndexField, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final multikeyValue = multikey;
    if (multikeyValue != null) {
      map['multikey'] = multikeyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryScopeValue = queryScope;
    if (queryScopeValue != null) {
      map['queryScope'] = queryScopeValue;
    }
    final uniqueValue = unique;
    if (uniqueValue != null) {
      map['unique'] = uniqueValue;
    }
    return map;
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      apiScope: Input.asOptionalInput<String>(map['apiScope']),
      collection: Input.asInput<String>(map['collection']),
      database: Input.asOptionalInput<String>(map['database']),
      density: Input.asOptionalInput<String>(map['density']),
      fields: Input.asInput<List<IndexField>>(map['fields']),
      multikey: Input.asOptionalInput<bool>(map['multikey']),
      project: Input.asOptionalInput<String>(map['project']),
      queryScope: Input.asOptionalInput<String>(map['queryScope']),
      unique: Input.asOptionalInput<bool>(map['unique']),
    );
  }
}
