// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_transfer_regional_service_resource_response.dart';

/// Properties for DataTransferServiceResource.
class DataTransferServiceResourcePropertiesResponse {
  /// Time of the last state change (ISO-8601 format).
  final String creationTime;
  /// Instance count for the service.
  final int? instanceCount;
  /// Instance type for the service.
  final String? instanceSize;
  /// An array that contains all of the locations for the service.
  final List<DataTransferRegionalServiceResourceResponse> locations;
  /// ServiceType for the service.
  /// Expected value is 'DataTransfer'.
  final String serviceType;
  /// Describes the status of a service.
  final String status;

  /// Creates a new [DataTransferServiceResourcePropertiesResponse].
  /// [creationTime] Time of the last state change (ISO-8601 format).
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [locations] An array that contains all of the locations for the service.
  /// [serviceType] ServiceType for the service.
  /// [status] Describes the status of a service.
  DataTransferServiceResourcePropertiesResponse({
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
      'locations': pulumi.Input.encodeList<DataTransferRegionalServiceResourceResponse, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'serviceType': serviceType,
      'status': status,
    };
  }

  factory DataTransferServiceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataTransferServiceResourcePropertiesResponse(
      creationTime: map['creationTime'] as String,
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceSize: map['instanceSize'] == null ? null : map['instanceSize'] as String,
      locations: pulumi.Input.decodeList<DataTransferRegionalServiceResourceResponse>(map['locations'], (value) => DataTransferRegionalServiceResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceType: map['serviceType'] as String,
      status: map['status'] as String,
    );
  }
}

