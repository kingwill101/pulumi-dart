// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_backfill_all_spanner_excluded_objects_schema/stream_backfill_all_spanner_excluded_objects_schema.dart';

class StreamBackfillAllSpannerExcludedObjects {
  /// Spanner schemas in the database
  /// Structure is documented below.
  final List<StreamBackfillAllSpannerExcludedObjectsSchema> schemas;

  StreamBackfillAllSpannerExcludedObjects({
    required this.schemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['schemas'] = Input.encodeList<
        StreamBackfillAllSpannerExcludedObjectsSchema,
        Map<String, dynamic>>(schemas, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllSpannerExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllSpannerExcludedObjects(
      schemas: Input.decodeList<StreamBackfillAllSpannerExcludedObjectsSchema>(
          map['schemas'],
          (value) => StreamBackfillAllSpannerExcludedObjectsSchema.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
