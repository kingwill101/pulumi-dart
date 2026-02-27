// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_backfill_all_mongodb_excluded_objects_database_collection_field/stream_backfill_all_mongodb_excluded_objects_database_collection_field.dart';

class StreamBackfillAllMongodbExcludedObjectsDatabaseCollection {
  /// Collection name.
  final String collection;

  /// Fields in the collection.
  /// Structure is documented below.
  final List<StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField>?
      fields;

  StreamBackfillAllMongodbExcludedObjectsDatabaseCollection({
    required this.collection,
    this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = pulumi.Input.encodeList<
          StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField,
          Map<String, dynamic>>(fieldsValue, (value) => value.toMap());
    }
    return map;
  }

  factory StreamBackfillAllMongodbExcludedObjectsDatabaseCollection.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllMongodbExcludedObjectsDatabaseCollection(
      collection: map['collection'] as String,
      fields: map['fields'] == null
          ? null
          : pulumi.Input.decodeList<
                  StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField>(
              map['fields'],
              (value) =>
                  StreamBackfillAllMongodbExcludedObjectsDatabaseCollectionField
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
