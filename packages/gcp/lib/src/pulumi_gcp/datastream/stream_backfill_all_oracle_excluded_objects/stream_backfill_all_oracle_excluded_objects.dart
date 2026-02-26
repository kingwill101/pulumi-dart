// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stream_backfill_all_oracle_excluded_objects_oracle_schema/stream_backfill_all_oracle_excluded_objects_oracle_schema.dart';

class StreamBackfillAllOracleExcludedObjects {
  /// Oracle schemas/databases in the database server
  /// Structure is documented below.
  final List<StreamBackfillAllOracleExcludedObjectsOracleSchema> oracleSchemas;

  StreamBackfillAllOracleExcludedObjects({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleSchemas'] = Input.encodeList<
        StreamBackfillAllOracleExcludedObjectsOracleSchema,
        Map<String, dynamic>>(oracleSchemas, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllOracleExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllOracleExcludedObjects(
      oracleSchemas:
          Input.decodeList<StreamBackfillAllOracleExcludedObjectsOracleSchema>(
              map['oracleSchemas'],
              (value) =>
                  StreamBackfillAllOracleExcludedObjectsOracleSchema.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
