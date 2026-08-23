// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_broker_engine_types_broker_engine_type_engine_version.dart';

class GetBrokerEngineTypesBrokerEngineType {
  /// MQ engine type to return version details for.
  final pulumi.Input<String> engineType;
  /// List of engine versions. See `engineVersions` Block.
  final pulumi.Input<List<GetBrokerEngineTypesBrokerEngineTypeEngineVersion>> engineVersions;

  /// Creates a new [GetBrokerEngineTypesBrokerEngineType].
  /// [engineType] MQ engine type to return version details for.
  /// [engineVersions] List of engine versions. See `engineVersions` Block.
  const GetBrokerEngineTypesBrokerEngineType({
    required this.engineType,
    required this.engineVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engineType': engineType,
      'engineVersions': pulumi.Input.mapInputValue<List<GetBrokerEngineTypesBrokerEngineTypeEngineVersion>, List<Map<String, dynamic>>>(engineVersions, (value) => pulumi.Input.encodeList<GetBrokerEngineTypesBrokerEngineTypeEngineVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetBrokerEngineTypesBrokerEngineType.fromMap(Map<String, dynamic> map) {
    return GetBrokerEngineTypesBrokerEngineType(
      engineType: pulumi.Input.fromValue(map['engineType'] as String),
      engineVersions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBrokerEngineTypesBrokerEngineTypeEngineVersion>(map['engineVersions']!, (value) => GetBrokerEngineTypesBrokerEngineTypeEngineVersion.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
