// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'materialized_views_builder_regional_service_resource_response.dart';

/// Properties for MaterializedViewsBuilderServiceResource.
class MaterializedViewsBuilderServiceResourcePropertiesResponse {
  /// Time of the last state change (ISO-8601 format).
  final pulumi.Input<String> creationTime;
  /// Instance count for the service.
  final pulumi.Input<int>? instanceCount;
  /// Instance type for the service.
  final pulumi.Input<String>? instanceSize;
  /// An array that contains all of the locations for the service.
  final pulumi.Input<List<MaterializedViewsBuilderRegionalServiceResourceResponse>> locations;
  /// ServiceType for the service.
  /// Expected value is 'MaterializedViewsBuilder'.
  final pulumi.Input<String> serviceType;
  /// Describes the status of a service.
  final pulumi.Input<String> status;

  /// Creates a new [MaterializedViewsBuilderServiceResourcePropertiesResponse].
  /// [creationTime] Time of the last state change (ISO-8601 format).
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [locations] An array that contains all of the locations for the service.
  /// [serviceType] ServiceType for the service.
  /// [status] Describes the status of a service.
  MaterializedViewsBuilderServiceResourcePropertiesResponse({
    required this.creationTime,
    this.instanceCount,
    this.instanceSize,
    required this.locations,
    required this.serviceType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'instanceCount': ?instanceCount,
      'instanceSize': ?instanceSize,
      'locations': pulumi.Input.mapInputValue<List<MaterializedViewsBuilderRegionalServiceResourceResponse>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<MaterializedViewsBuilderRegionalServiceResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceType': serviceType,
      'status': status,
    };
  }

  factory MaterializedViewsBuilderServiceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MaterializedViewsBuilderServiceResourcePropertiesResponse(
      creationTime: (map['creationTime'] as String).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount']! as int).input(),
      instanceSize: map['instanceSize'] == null ? null : (map['instanceSize']! as String).input(),
      locations: (pulumi.Input.decodeList<MaterializedViewsBuilderRegionalServiceResourceResponse>(map['locations'], (value) => MaterializedViewsBuilderRegionalServiceResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceType: (map['serviceType'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

