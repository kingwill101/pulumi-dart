// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_engines_instance_engine.dart';

/// Result data returned by getInstanceEngines.
class GetInstanceEnginesResult {
  /// Database type.
  final String? engine;
  /// Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance version.
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? instanceChargeType;
  /// A list of Tair (Redis OSS-Compatible) And Memcache (KVStore) available instance engines. Each element contains the following attributes:
  final List<GetInstanceEnginesInstanceEngine> instanceEngines;
  final String? outputFile;
  /// The Zone to launch the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  final String zoneId;

  /// Creates a new [GetInstanceEnginesResult].
  /// [engine] Database type.
  /// [engineVersion] Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance version.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceChargeType] Optional.
  /// [instanceEngines] A list of Tair (Redis OSS-Compatible) And Memcache (KVStore) available instance engines. Each element contains the following attributes:
  /// [outputFile] Optional.
  /// [zoneId] The Zone to launch the Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  GetInstanceEnginesResult({
    this.engine,
    this.engineVersion,
    required this.id,
    this.instanceChargeType,
    required this.instanceEngines,
    this.outputFile,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'id': id,
      'instanceChargeType': ?instanceChargeType,
      'instanceEngines': pulumi.Input.encodeList<GetInstanceEnginesInstanceEngine, Map<String, dynamic>>(instanceEngines, (value) => value.toMap()),
      'outputFile': ?outputFile,
      'zoneId': zoneId,
    };
  }

  factory GetInstanceEnginesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceEnginesResult(
      engine: map['engine'] == null ? null : map['engine']! as String,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion']! as String,
      id: map['id'] as String,
      instanceChargeType: map['instanceChargeType'] == null ? null : map['instanceChargeType']! as String,
      instanceEngines: pulumi.Input.decodeList<GetInstanceEnginesInstanceEngine>(map['instanceEngines'], (value) => GetInstanceEnginesInstanceEngine.fromMap((value as Map).cast<String, dynamic>())),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

