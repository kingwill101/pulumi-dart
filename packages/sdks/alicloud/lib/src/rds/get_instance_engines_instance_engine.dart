// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_engines_instance_engine_zone_id.dart';

class GetInstanceEnginesInstanceEngine {
  /// DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  final pulumi.Input<String> category;

  /// Database type. Valid values: "MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  final pulumi.Input<String> engine;

  /// Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  final pulumi.Input<String> engineVersion;

  /// A list of Zone to launch the DB instance.
  final pulumi.Input<List<GetInstanceEnginesInstanceEngineZoneId>> zoneIds;

  /// Creates a new [GetInstanceEnginesInstanceEngine].
  /// [category] DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  /// [engine] Database type. Valid values: "MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  /// [engineVersion] Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  /// [zoneIds] A list of Zone to launch the DB instance.
  GetInstanceEnginesInstanceEngine({
    required this.category,
    required this.engine,
    required this.engineVersion,
    required this.zoneIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'engine': engine,
      'engineVersion': engineVersion,
      'zoneIds':
          pulumi.Input.mapInputValue<
            List<GetInstanceEnginesInstanceEngineZoneId>,
            List<Map<String, dynamic>>
          >(
            zoneIds,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstanceEnginesInstanceEngineZoneId,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInstanceEnginesInstanceEngine.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnginesInstanceEngine(
      category: pulumi.Input.fromValue(map['category'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      zoneIds: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInstanceEnginesInstanceEngineZoneId>(
          map['zoneIds']!,
          (value) => GetInstanceEnginesInstanceEngineZoneId.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
