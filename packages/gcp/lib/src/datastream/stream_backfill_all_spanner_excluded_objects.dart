// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_spanner_excluded_objects_schema.dart';

class StreamBackfillAllSpannerExcludedObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final List<StreamBackfillAllSpannerExcludedObjectsSchema> schemas;

  /// Creates a new [StreamBackfillAllSpannerExcludedObjects].
  /// [schemas] Spanner schemas in the database
  StreamBackfillAllSpannerExcludedObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemas'] = pulumi.Input.encodeList<
        StreamBackfillAllSpannerExcludedObjectsSchema,
        Map<String, dynamic>>(schemas, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllSpannerExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSpannerExcludedObjects(
      schemas: pulumi.Input.decodeList<
              StreamBackfillAllSpannerExcludedObjectsSchema>(
          map['schemas'],
          (value) => StreamBackfillAllSpannerExcludedObjectsSchema.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
