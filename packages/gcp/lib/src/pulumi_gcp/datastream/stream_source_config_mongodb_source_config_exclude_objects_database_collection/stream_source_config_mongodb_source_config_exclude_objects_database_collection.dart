// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_source_config_mongodb_source_config_exclude_objects_database_collection_field/stream_source_config_mongodb_source_config_exclude_objects_database_collection_field.dart';

class StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection {
  /// Collection name.
  final String? collection;

  /// Fields in the collection.
  /// Structure is documented below.
  final List<
          StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField>?
      fields;

  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection({
    this.collection,
    this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionValue = collection;
    if (collectionValue != null) {
      map['collection'] = collectionValue;
    }
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = pulumi.Input.encodeList<
          StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollection(
      collection:
          map['collection'] == null ? null : map['collection'] as String,
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField>(
              map['fields'],
              (value) =>
                  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
