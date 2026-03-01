// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_model_sku_capacity_properties_response.dart';
import 'endpoint_model_sku_rate_limit_properties_response.dart';

class EndpointModelSkuPropertiesResponse {
  final EndpointModelSkuCapacityPropertiesResponse? capacity;
  /// The list of ARM id for the connection support this SKU.
  final List<String>? connectionIds;
  /// The datetime of deprecation of the model SKU.
  final String? deprecationDate;
  /// The name of the model SKU.
  final String? name;
  final List<EndpointModelSkuRateLimitPropertiesResponse>? rateLimits;
  /// The usage name of the model SKU.
  final String? usageName;

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
      'capacity': ?capacity == null ? null : capacity!.toMap(),
      'connectionIds': ?connectionIds,
      'deprecationDate': ?deprecationDate,
      'name': ?name,
      'rateLimits': ?rateLimits == null ? null : pulumi.Input.encodeList<EndpointModelSkuRateLimitPropertiesResponse, Map<String, dynamic>>(rateLimits!, (value) => value.toMap()),
      'usageName': ?usageName,
    };
  }

  factory EndpointModelSkuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EndpointModelSkuPropertiesResponse(
      capacity: map['capacity'] == null ? null : EndpointModelSkuCapacityPropertiesResponse.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      connectionIds: map['connectionIds'] == null ? null : (map['connectionIds'] as List).cast<String>(),
      deprecationDate: map['deprecationDate'] == null ? null : map['deprecationDate'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      rateLimits: map['rateLimits'] == null ? null : pulumi.Input.decodeList<EndpointModelSkuRateLimitPropertiesResponse>(map['rateLimits'], (value) => EndpointModelSkuRateLimitPropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      usageName: map['usageName'] == null ? null : map['usageName'] as String,
    );
  }
}

