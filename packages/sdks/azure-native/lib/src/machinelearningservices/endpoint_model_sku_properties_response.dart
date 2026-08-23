// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_sku_capacity_properties_response.dart';
import 'endpoint_model_sku_rate_limit_properties_response.dart';

class EndpointModelSkuPropertiesResponse {
  final pulumi.Input<EndpointModelSkuCapacityPropertiesResponse>? capacity;
  /// The list of ARM id for the connection support this SKU.
  final pulumi.Input<List<String>>? connectionIds;
  /// The datetime of deprecation of the model SKU.
  final pulumi.Input<String>? deprecationDate;
  /// The name of the model SKU.
  final pulumi.Input<String>? name;
  final pulumi.Input<List<EndpointModelSkuRateLimitPropertiesResponse>>? rateLimits;
  /// The usage name of the model SKU.
  final pulumi.Input<String>? usageName;

  /// Creates a new [EndpointModelSkuPropertiesResponse].
  /// [capacity] Optional.
  /// [connectionIds] The list of ARM id for the connection support this SKU.
  /// [deprecationDate] The datetime of deprecation of the model SKU.
  /// [name] The name of the model SKU.
  /// [rateLimits] Optional.
  /// [usageName] The usage name of the model SKU.
  const EndpointModelSkuPropertiesResponse({
    this.capacity,
    this.connectionIds,
    this.deprecationDate,
    this.name,
    this.rateLimits,
    this.usageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?pulumi.Input.mapOptionalInputValue<EndpointModelSkuCapacityPropertiesResponse, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'connectionIds': ?connectionIds,
      'deprecationDate': ?deprecationDate,
      'name': ?name,
      'rateLimits': ?pulumi.Input.mapOptionalInputValue<List<EndpointModelSkuRateLimitPropertiesResponse>, List<Map<String, dynamic>>>(rateLimits, (value) => pulumi.Input.encodeList<EndpointModelSkuRateLimitPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'usageName': ?usageName,
    };
  }

  factory EndpointModelSkuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelSkuPropertiesResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EndpointModelSkuCapacityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionIds: (() { final guardedValue = map['connectionIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deprecationDate: (() { final guardedValue = map['deprecationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rateLimits: (() { final guardedValue = map['rateLimits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EndpointModelSkuRateLimitPropertiesResponse>(guardedValue, (value) => EndpointModelSkuRateLimitPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      usageName: (() { final guardedValue = map['usageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
