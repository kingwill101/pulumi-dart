// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_dedicated_gateway_regional_service_resource_response.dart';

/// Properties for SqlDedicatedGatewayServiceResource.
class SqlDedicatedGatewayServiceResourcePropertiesResponse {
  /// Time of the last state change (ISO-8601 format).
  final String creationTime;
  /// DedicatedGatewayType for the service.
  final String? dedicatedGatewayType;
  /// Instance count for the service.
  final int? instanceCount;
  /// Instance type for the service.
  final String? instanceSize;
  /// An array that contains all of the locations for the service.
  final List<SqlDedicatedGatewayRegionalServiceResourceResponse> locations;
  /// ServiceType for the service.
  /// Expected value is 'SqlDedicatedGateway'.
  final String serviceType;
  /// SqlDedicatedGateway endpoint for the service.
  final String? sqlDedicatedGatewayEndpoint;
  /// Describes the status of a service.
  final String status;

  /// Creates a new [SqlDedicatedGatewayServiceResourcePropertiesResponse].
  /// [creationTime] Time of the last state change (ISO-8601 format).
  /// [dedicatedGatewayType] DedicatedGatewayType for the service.
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [locations] An array that contains all of the locations for the service.
  /// [serviceType] ServiceType for the service.
  /// [sqlDedicatedGatewayEndpoint] SqlDedicatedGateway endpoint for the service.
  /// [status] Describes the status of a service.
  SqlDedicatedGatewayServiceResourcePropertiesResponse({
    required this.creationTime,
    this.dedicatedGatewayType,
    this.instanceCount,
    this.instanceSize,
    required this.locations,
    required this.serviceType,
    this.sqlDedicatedGatewayEndpoint,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'dedicatedGatewayType': ?dedicatedGatewayType,
      'instanceCount': ?instanceCount,
      'instanceSize': ?instanceSize,
      'locations': pulumi.Input.encodeList<SqlDedicatedGatewayRegionalServiceResourceResponse, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'serviceType': serviceType,
      'sqlDedicatedGatewayEndpoint': ?sqlDedicatedGatewayEndpoint,
      'status': status,
    };
  }

  factory SqlDedicatedGatewayServiceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlDedicatedGatewayServiceResourcePropertiesResponse(
      creationTime: map['creationTime'] as String,
      dedicatedGatewayType: map['dedicatedGatewayType'] == null ? null : map['dedicatedGatewayType'] as String,
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceSize: map['instanceSize'] == null ? null : map['instanceSize'] as String,
      locations: pulumi.Input.decodeList<SqlDedicatedGatewayRegionalServiceResourceResponse>(map['locations'], (value) => SqlDedicatedGatewayRegionalServiceResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceType: map['serviceType'] as String,
      sqlDedicatedGatewayEndpoint: map['sqlDedicatedGatewayEndpoint'] == null ? null : map['sqlDedicatedGatewayEndpoint'] as String,
      status: map['status'] as String,
    );
  }
}

