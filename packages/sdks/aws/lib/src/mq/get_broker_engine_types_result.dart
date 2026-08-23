// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_broker_engine_types_broker_engine_type.dart';

/// Result data returned by getBrokerEngineTypes.
class GetBrokerEngineTypesResult {
  /// List of available engine types and versions. See `brokerEngineTypes` Block.
  final List<GetBrokerEngineTypesBrokerEngineType> brokerEngineTypes;
  /// Broker's engine type.
  final String? engineType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetBrokerEngineTypesResult].
  /// [brokerEngineTypes] List of available engine types and versions. See `brokerEngineTypes` Block.
  /// [engineType] Broker's engine type.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  const GetBrokerEngineTypesResult({
    required this.brokerEngineTypes,
    this.engineType,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerEngineTypes': pulumi.Input.encodeList<GetBrokerEngineTypesBrokerEngineType, Map<String, dynamic>>(brokerEngineTypes, (value) => value.toMap()),
      'engineType': ?engineType,
      'id': id,
      'region': region,
    };
  }

  factory GetBrokerEngineTypesResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerEngineTypesResult(
      brokerEngineTypes: pulumi.Input.decodeList<GetBrokerEngineTypesBrokerEngineType>(map['brokerEngineTypes']!, (value) => GetBrokerEngineTypesBrokerEngineType.fromMap((value as Map).cast<String, dynamic>())),
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
