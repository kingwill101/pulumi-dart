// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_services_service.dart';

/// Result data returned by getRouteServices.
class GetRouteServicesResult {
  /// The region of the network instances that access the cloud services.
  final String? accessRegionId;
  /// The ID of the CEN instance.
  final String cenId;
  /// The domain name or IP address of the cloud service.
  final String? host;
  /// The region of the cloud service.
  final String? hostRegionId;
  /// The VPC associated with the cloud service.
  final String? hostVpcId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of CEN Route Service IDs.
  final List<String> ids;
  final String? outputFile;
  /// A list of CEN Route Services. Each element contains the following attributes:
  final List<GetRouteServicesService> services;
  /// The status of the cloud service.
  final String? status;

  /// Creates a new [GetRouteServicesResult].
  /// [accessRegionId] The region of the network instances that access the cloud services.
  /// [cenId] The ID of the CEN instance.
  /// [host] The domain name or IP address of the cloud service.
  /// [hostRegionId] The region of the cloud service.
  /// [hostVpcId] The VPC associated with the cloud service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of CEN Route Service IDs.
  /// [outputFile] Optional.
  /// [services] A list of CEN Route Services. Each element contains the following attributes:
  /// [status] The status of the cloud service.
  GetRouteServicesResult({
    this.accessRegionId,
    required this.cenId,
    this.host,
    this.hostRegionId,
    this.hostVpcId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.services,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRegionId': ?accessRegionId,
      'cenId': cenId,
      'host': ?host,
      'hostRegionId': ?hostRegionId,
      'hostVpcId': ?hostVpcId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'services': pulumi.Input.encodeList<GetRouteServicesService, Map<String, dynamic>>(services, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetRouteServicesResult.fromMap(Map<String, dynamic> map) {
    return GetRouteServicesResult(
      accessRegionId: map['accessRegionId'] == null ? null : map['accessRegionId'] as String,
      cenId: map['cenId'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      hostRegionId: map['hostRegionId'] == null ? null : map['hostRegionId'] as String,
      hostVpcId: map['hostVpcId'] == null ? null : map['hostVpcId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      services: pulumi.Input.decodeList<GetRouteServicesService>(map['services'], (value) => GetRouteServicesService.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

