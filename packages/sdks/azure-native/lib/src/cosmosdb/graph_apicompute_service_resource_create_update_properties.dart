// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for Create or Update request for GraphAPIComputeServiceResource
class GraphAPIComputeServiceResourceCreateUpdateProperties {
  /// Instance count for the service.
  final pulumi.Input<int>? instanceCount;
  /// Instance type for the service.
  final pulumi.Input<String>? instanceSize;
  /// ServiceType for the service.
  /// Expected value is 'GraphAPICompute'.
  final pulumi.Input<String> serviceType;

  /// Creates a new [GraphAPIComputeServiceResourceCreateUpdateProperties].
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [serviceType] ServiceType for the service.
  GraphAPIComputeServiceResourceCreateUpdateProperties({
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

  factory GraphAPIComputeServiceResourceCreateUpdateProperties.fromMap(Map<String, dynamic> map) {
    return GraphAPIComputeServiceResourceCreateUpdateProperties(
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      instanceSize: map['instanceSize'] == null ? null : (map['instanceSize'] as String).input(),
      serviceType: (map['serviceType'] as String).input(),
    );
  }
}

