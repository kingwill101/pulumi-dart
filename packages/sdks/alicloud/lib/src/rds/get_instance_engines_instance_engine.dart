// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_engines_instance_engine_zone_id.dart';

class GetInstanceEnginesInstanceEngine {
  /// DB Instance category. the value like [`Basic`, `HighAvailability`, `Finance`, `AlwaysOn`], [detail info](https://www.alibabacloud.com/help/doc-detail/69795.htm).
  final String category;
  /// Database type. Valid values: "MySQL", "SQLServer", "PostgreSQL", "MariaDB". If not set, it will match all of engines.
  final String engine;
  /// Database version required by the user. Value options can refer to the latest docs [detail info](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  final String engineVersion;
  /// A list of Zone to launch the DB instance.
  final List<GetInstanceEnginesInstanceEngineZoneId> zoneIds;

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
      'zoneIds': pulumi.Input.encodeList<GetInstanceEnginesInstanceEngineZoneId, Map<String, dynamic>>(zoneIds, (value) => value.toMap()),
    };
  }

  factory GetInstanceEnginesInstanceEngine.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnginesInstanceEngine(
      category: map['category'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      zoneIds: pulumi.Input.decodeList<GetInstanceEnginesInstanceEngineZoneId>(map['zoneIds'], (value) => GetInstanceEnginesInstanceEngineZoneId.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

