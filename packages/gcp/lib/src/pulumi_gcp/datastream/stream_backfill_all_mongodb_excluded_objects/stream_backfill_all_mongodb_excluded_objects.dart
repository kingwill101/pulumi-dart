// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stream_backfill_all_mongodb_excluded_objects_database/stream_backfill_all_mongodb_excluded_objects_database.dart';

class StreamBackfillAllMongodbExcludedObjects {
  /// MongoDB databases in the cluster.
  /// Structure is documented below.
  final List<StreamBackfillAllMongodbExcludedObjectsDatabase> databases;

  StreamBackfillAllMongodbExcludedObjects({
    required this.databases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databases'] = pulumi.Input.encodeList<
        StreamBackfillAllMongodbExcludedObjectsDatabase,
        Map<String, dynamic>>(databases, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllMongodbExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllMongodbExcludedObjects(
      databases: pulumi.Input.decodeList<
              StreamBackfillAllMongodbExcludedObjectsDatabase>(
          map['databases'],
          (value) => StreamBackfillAllMongodbExcludedObjectsDatabase.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
