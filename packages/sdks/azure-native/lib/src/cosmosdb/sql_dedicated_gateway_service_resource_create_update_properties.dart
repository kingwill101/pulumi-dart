// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for Create or Update request for SqlDedicatedGatewayServiceResource
class SqlDedicatedGatewayServiceResourceCreateUpdateProperties {
  /// DedicatedGatewayType for the service.
  final pulumi.Input<dynamic>? dedicatedGatewayType;
  /// Instance count for the service.
  final pulumi.Input<int?>? instanceCount;
  /// Instance type for the service.
  final pulumi.Input<dynamic>? instanceSize;
  /// ServiceType for the service.
  /// Expected value is 'SqlDedicatedGateway'.
  final pulumi.Input<String> serviceType;

  /// Creates a new [SqlDedicatedGatewayServiceResourceCreateUpdateProperties].
  /// [dedicatedGatewayType] DedicatedGatewayType for the service.
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [serviceType] ServiceType for the service.
  const SqlDedicatedGatewayServiceResourceCreateUpdateProperties({
    this.dedicatedGatewayType,
    this.instanceCount,
    this.instanceSize,
    required this.serviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedGatewayType': ?dedicatedGatewayType,
      'instanceCount': ?instanceCount,
      'instanceSize': ?instanceSize,
      'serviceType': serviceType,
    };
  }

  factory SqlDedicatedGatewayServiceResourceCreateUpdateProperties.fromMap(Map<String, dynamic> map) {
    return SqlDedicatedGatewayServiceResourceCreateUpdateProperties(
      dedicatedGatewayType: (() { final guardedValue = map['dedicatedGatewayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      instanceSize: (() { final guardedValue = map['instanceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceType: pulumi.Input.fromValue(map['serviceType'] as String),
    );
  }
}
