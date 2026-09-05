// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_broker_engine_types_broker_engine_type.dart';

/// Result data returned by getBrokerEngineTypes.
class GetBrokerEngineTypesResult {
  /// List of available engine types and versions. See `brokerEngineTypes` Block.
  final List<GetBrokerEngineTypesBrokerEngineType>? brokerEngineTypes;
  /// Broker's engine type.
  final String? engineType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetBrokerEngineTypesResult].
  /// [brokerEngineTypes] List of available engine types and versions. See `brokerEngineTypes` Block.
  /// [engineType] Broker's engine type.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetBrokerEngineTypesResult({
    this.brokerEngineTypes,
    this.engineType,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerEngineTypes': ?(() { final guardedValue = brokerEngineTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBrokerEngineTypesBrokerEngineType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'engineType': ?engineType,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetBrokerEngineTypesResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerEngineTypesResult(
      brokerEngineTypes: (() { final guardedValue = map['brokerEngineTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBrokerEngineTypesBrokerEngineType>(guardedValue, (value) => GetBrokerEngineTypesBrokerEngineType.fromMap((value as Map).cast<String, dynamic>())); })(),
      engineType: (() { final guardedValue = map['engineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
