// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_dedicated_gateway_regional_service_resource_response.dart';

/// Properties for SqlDedicatedGatewayServiceResource.
class SqlDedicatedGatewayServiceResourcePropertiesResponse {
  /// Time of the last state change (ISO-8601 format).
  final pulumi.Input<String> creationTime;
  /// DedicatedGatewayType for the service.
  final pulumi.Input<String?>? dedicatedGatewayType;
  /// Instance count for the service.
  final pulumi.Input<int?>? instanceCount;
  /// Instance type for the service.
  final pulumi.Input<String?>? instanceSize;
  /// An array that contains all of the locations for the service.
  final pulumi.Input<List<SqlDedicatedGatewayRegionalServiceResourceResponse>> locations;
  /// ServiceType for the service.
  /// Expected value is 'SqlDedicatedGateway'.
  final pulumi.Input<String> serviceType;
  /// SqlDedicatedGateway endpoint for the service.
  final pulumi.Input<String?>? sqlDedicatedGatewayEndpoint;
  /// Describes the status of a service.
  final pulumi.Input<String> status;

  /// Creates a new [SqlDedicatedGatewayServiceResourcePropertiesResponse].
  /// [creationTime] Time of the last state change (ISO-8601 format).
  /// [dedicatedGatewayType] DedicatedGatewayType for the service.
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [locations] An array that contains all of the locations for the service.
  /// [serviceType] ServiceType for the service.
  /// [sqlDedicatedGatewayEndpoint] SqlDedicatedGateway endpoint for the service.
  /// [status] Describes the status of a service.
  const SqlDedicatedGatewayServiceResourcePropertiesResponse({
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
      'locations': pulumi.Input.mapInputValue<List<SqlDedicatedGatewayRegionalServiceResourceResponse>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<SqlDedicatedGatewayRegionalServiceResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceType': serviceType,
      'sqlDedicatedGatewayEndpoint': ?sqlDedicatedGatewayEndpoint,
      'status': status,
    };
  }

  factory SqlDedicatedGatewayServiceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SqlDedicatedGatewayServiceResourcePropertiesResponse(
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      dedicatedGatewayType: (() { final guardedValue = map['dedicatedGatewayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      instanceSize: (() { final guardedValue = map['instanceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: pulumi.Input.fromValue(pulumi.Input.decodeList<SqlDedicatedGatewayRegionalServiceResourceResponse>(map['locations']!, (value) => SqlDedicatedGatewayRegionalServiceResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serviceType: pulumi.Input.fromValue(map['serviceType'] as String),
      sqlDedicatedGatewayEndpoint: (() { final guardedValue = map['sqlDedicatedGatewayEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
