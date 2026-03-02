// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_engines_instance_engine.dart';

/// Result data returned by getInstanceEngines.
class GetInstanceEnginesResult {
  /// DB Instance category.
  final String? category;
  final String? dbInstanceStorageType;
  /// Database type.
  final String? engine;
  /// DB Instance version.
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of engines.
  final List<String> ids;
  final String? instanceChargeType;
  /// A list of Rds available resource. Each element contains the following attributes:
  final List<GetInstanceEnginesInstanceEngine> instanceEngines;
  final bool? multiZone;
  final String? outputFile;
  final String? zoneId;

  /// Creates a new [GetInstanceEnginesResult].
  /// [category] DB Instance category.
  /// [dbInstanceStorageType] Optional.
  /// [engine] Database type.
  /// [engineVersion] DB Instance version.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of engines.
  /// [instanceChargeType] Optional.
  /// [instanceEngines] A list of Rds available resource. Each element contains the following attributes:
  /// [multiZone] Optional.
  /// [outputFile] Optional.
  /// [zoneId] Optional.
  GetInstanceEnginesResult({
    this.category,
    this.dbInstanceStorageType,
    this.engine,
    this.engineVersion,
    required this.id,
    required this.ids,
    this.instanceChargeType,
    required this.instanceEngines,
    this.multiZone,
    this.outputFile,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'id': id,
      'ids': ids,
      'instanceChargeType': ?instanceChargeType,
      'instanceEngines': pulumi.Input.encodeList<GetInstanceEnginesInstanceEngine, Map<String, dynamic>>(instanceEngines, (value) => value.toMap()),
      'multiZone': ?multiZone,
      'outputFile': ?outputFile,
      'zoneId': ?zoneId,
    };
  }

  factory GetInstanceEnginesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnginesResult(
      category: map['category'] == null ? null : map['category']! as String,
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : map['dbInstanceStorageType']! as String,
      engine: map['engine'] == null ? null : map['engine']! as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType']! as String,
      instanceEngines: pulumi.Input.decodeList<GetInstanceEnginesInstanceEngine>(map['instanceEngines'], (value) => GetInstanceEnginesInstanceEngine.fromMap((value as Map).cast<String, dynamic>())),
      multiZone: map['multiZone'] == null ? null : map['multiZone']! as bool,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId']! as String,
    );
  }
}

