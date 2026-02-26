// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_broker_engine_types_broker_engine_type_engine_version/get_broker_engine_types_broker_engine_type_engine_version.dart';

class GetBrokerEngineTypesBrokerEngineType {
  /// MQ engine type to return version details for.
  final String engineType;

  /// List of engine versions. See Engine Versions.
  final List<GetBrokerEngineTypesBrokerEngineTypeEngineVersion> engineVersions;

  GetBrokerEngineTypesBrokerEngineType({
    required this.engineType,
    required this.engineVersions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engineType'] = engineType;
    map['engineVersions'] = Input.encodeList<
        GetBrokerEngineTypesBrokerEngineTypeEngineVersion,
        Map<String, dynamic>>(engineVersions, (value) => value.toMap());
    return map;
  }

  factory GetBrokerEngineTypesBrokerEngineType.fromMap(
      Map<String, dynamic> map) {
    return GetBrokerEngineTypesBrokerEngineType(
      engineType: map['engineType'] as String,
      engineVersions:
          Input.decodeList<GetBrokerEngineTypesBrokerEngineTypeEngineVersion>(
              map['engineVersions'],
              (value) =>
                  GetBrokerEngineTypesBrokerEngineTypeEngineVersion.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
