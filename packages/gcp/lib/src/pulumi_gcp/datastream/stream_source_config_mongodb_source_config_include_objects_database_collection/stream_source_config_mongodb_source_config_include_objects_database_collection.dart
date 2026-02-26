// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_source_config_mongodb_source_config_include_objects_database_collection_field/stream_source_config_mongodb_source_config_include_objects_database_collection_field.dart';

class StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection {
  /// Collection name.
  final String? collection;

  /// Fields in the collection.
  /// Structure is documented below.
  final List<
          StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField>?
      fields;

  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection({
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
      map['fields'] = Input.encodeList<
          StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollection(
      collection:
          map['collection'] == null ? null : map['collection'] as String,
      fields: map['fields'] == null
          ? null
          : Input.decodeList<
                  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField>(
              map['fields'],
              (value) =>
                  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
