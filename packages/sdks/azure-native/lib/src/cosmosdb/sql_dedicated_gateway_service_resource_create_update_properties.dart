// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for Create or Update request for SqlDedicatedGatewayServiceResource
class SqlDedicatedGatewayServiceResourceCreateUpdateProperties {
  /// DedicatedGatewayType for the service.
  final pulumi.Input<String>? dedicatedGatewayType;
  /// Instance count for the service.
  final pulumi.Input<int>? instanceCount;
  /// Instance type for the service.
  final pulumi.Input<String>? instanceSize;
  /// ServiceType for the service.
  /// Expected value is 'SqlDedicatedGateway'.
  final pulumi.Input<String> serviceType;

  /// Creates a new [SqlDedicatedGatewayServiceResourceCreateUpdateProperties].
  /// [dedicatedGatewayType] DedicatedGatewayType for the service.
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [serviceType] ServiceType for the service.
  SqlDedicatedGatewayServiceResourceCreateUpdateProperties({
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
      dedicatedGatewayType: map['dedicatedGatewayType'] == null ? null : (map['dedicatedGatewayType'] as String).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      instanceSize: map['instanceSize'] == null ? null : (map['instanceSize'] as String).input(),
      serviceType: (map['serviceType'] as String).input(),
    );
  }
}

