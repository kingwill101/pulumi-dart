// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for Create or Update request for MaterializedViewsBuilderServiceResource
class MaterializedViewsBuilderServiceResourceCreateUpdateProperties {
  /// Instance count for the service.
  final pulumi.Input<int?>? instanceCount;
  /// Instance type for the service.
  final pulumi.Input<dynamic>? instanceSize;
  /// ServiceType for the service.
  /// Expected value is 'MaterializedViewsBuilder'.
  final pulumi.Input<String> serviceType;

  /// Creates a new [MaterializedViewsBuilderServiceResourceCreateUpdateProperties].
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [serviceType] ServiceType for the service.
  const MaterializedViewsBuilderServiceResourceCreateUpdateProperties({
    this.instanceCount,
    this.instanceSize,
    required this.serviceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': ?instanceCount,
      'instanceSize': ?instanceSize,
      'serviceType': serviceType,
    };
  }

  factory MaterializedViewsBuilderServiceResourceCreateUpdateProperties.fromMap(Map<String, dynamic> map) {
    return MaterializedViewsBuilderServiceResourceCreateUpdateProperties(
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      instanceSize: (() { final guardedValue = map['instanceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceType: pulumi.Input.fromValue(map['serviceType'] as String),
    );
  }
}
