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
  EndpointModelSkuPropertiesResponse({
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
      capacity: map['capacity'] == null ? null : (EndpointModelSkuCapacityPropertiesResponse.fromMap((map['capacity'] as Map).cast<String, dynamic>())).input(),
      connectionIds: map['connectionIds'] == null ? null : ((map['connectionIds'] as List).cast<String>()).input(),
      deprecationDate: map['deprecationDate'] == null ? null : (map['deprecationDate'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      rateLimits: map['rateLimits'] == null ? null : (pulumi.Input.decodeList<EndpointModelSkuRateLimitPropertiesResponse>(map['rateLimits'], (value) => EndpointModelSkuRateLimitPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      usageName: map['usageName'] == null ? null : (map['usageName'] as String).input(),
    );
  }
}

