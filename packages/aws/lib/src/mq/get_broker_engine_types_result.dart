// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_broker_engine_types_broker_engine_type.dart';

/// Result data returned by getBrokerEngineTypes.
class GetBrokerEngineTypesResult {
  /// List of available engine types and versions. See Engine Types.
  final List<GetBrokerEngineTypesBrokerEngineType> brokerEngineTypes;

  /// Broker's engine type.
  final String? engineType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetBrokerEngineTypesResult].
  /// [brokerEngineTypes] List of available engine types and versions. See Engine Types.
  /// [engineType] Broker's engine type.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetBrokerEngineTypesResult({
    required this.brokerEngineTypes,
    this.engineType,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brokerEngineTypes'] = pulumi.Input.encodeList<
        GetBrokerEngineTypesBrokerEngineType,
        Map<String, dynamic>>(brokerEngineTypes, (value) => value.toMap());
    final engineTypeValue = engineType;
    if (engineTypeValue != null) {
      map['engineType'] = engineTypeValue;
    }
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetBrokerEngineTypesResult.fromMap(Map<String, dynamic> map) {
    return GetBrokerEngineTypesResult(
      brokerEngineTypes:
          pulumi.Input.decodeList<GetBrokerEngineTypesBrokerEngineType>(
              map['brokerEngineTypes'],
              (value) => GetBrokerEngineTypesBrokerEngineType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      engineType:
          map['engineType'] == null ? null : map['engineType'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
