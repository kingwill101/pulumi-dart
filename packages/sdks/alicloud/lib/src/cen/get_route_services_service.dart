// ignore_for_file: unused_element, unnecessary_cast


class GetRouteServicesService {
  /// The region of the network instances that access the cloud services.
  final String accessRegionId;
  /// The ID of the CEN instance.
  final String cenId;
  /// The IP address of the cloud service.
  final List<String> cidrs;
  /// The description of the cloud service.
  final String description;
  /// The domain name or IP address of the cloud service.
  final String host;
  /// The region of the cloud service.
  final String hostRegionId;
  /// The VPC associated with the cloud service.
  final String hostVpcId;
  /// The ID of the route service.
  final String id;
  /// The status of the cloud service. Valid values: `Active`, `Creating` and `Deleting`.
  final String status;
  /// The update interval. Default value: 5. The value cannot be modified.
  final String updateInterval;

  /// Creates a new [GetRouteServicesService].
  /// [accessRegionId] The region of the network instances that access the cloud services.
  /// [cenId] The ID of the CEN instance.
  /// [cidrs] The IP address of the cloud service.
  /// [description] The description of the cloud service.
  /// [host] The domain name or IP address of the cloud service.
  /// [hostRegionId] The region of the cloud service.
  /// [hostVpcId] The VPC associated with the cloud service.
  /// [id] The ID of the route service.
  /// [status] The status of the cloud service. Valid values: `Active`, `Creating` and `Deleting`.
  /// [updateInterval] The update interval. Default value: 5. The value cannot be modified.
  GetRouteServicesService({
    required this.accessRegionId,
    required this.cenId,
    required this.cidrs,
    required this.description,
    required this.host,
    required this.hostRegionId,
    required this.hostVpcId,
    required this.id,
    required this.status,
    required this.updateInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRegionId': accessRegionId,
      'cenId': cenId,
      'cidrs': cidrs,
      'description': description,
      'host': host,
      'hostRegionId': hostRegionId,
      'hostVpcId': hostVpcId,
      'id': id,
      'status': status,
      'updateInterval': updateInterval,
    };
  }

  factory GetRouteServicesService.fromMap(Map<String, dynamic> map) {
    return GetRouteServicesService(
      accessRegionId: map['accessRegionId'] as String,
      cenId: map['cenId'] as String,
      cidrs: (map['cidrs'] as List).cast<String>(),
      description: map['description'] as String,
      host: map['host'] as String,
      hostRegionId: map['hostRegionId'] as String,
      hostVpcId: map['hostVpcId'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
      updateInterval: map['updateInterval'] as String,
    );
  }
}

