// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_oracle_excluded_objects_oracle_schema.dart';

class StreamBackfillAllOracleExcludedObjects {
  /// Oracle schemas/databases in the database server
  /// Structure is documented below.
  final List<StreamBackfillAllOracleExcludedObjectsOracleSchema> oracleSchemas;

  /// Creates a new [StreamBackfillAllOracleExcludedObjects].
  /// [oracleSchemas] Oracle schemas/databases in the database server
  StreamBackfillAllOracleExcludedObjects({
    required this.oracleSchemas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['oracleSchemas'] = pulumi.Input.encodeList<
        StreamBackfillAllOracleExcludedObjectsOracleSchema,
        Map<String, dynamic>>(oracleSchemas, (value) => value.toMap());
    return map;
  }

  factory StreamBackfillAllOracleExcludedObjects.fromMap(
      Map<String, dynamic> map) {
    return StreamBackfillAllOracleExcludedObjects(
      oracleSchemas: pulumi.Input.decodeList<
              StreamBackfillAllOracleExcludedObjectsOracleSchema>(
          map['oracleSchemas'],
          (value) => StreamBackfillAllOracleExcludedObjectsOracleSchema.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
