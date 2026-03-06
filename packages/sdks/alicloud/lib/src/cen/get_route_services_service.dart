// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteServicesService {
  /// The region of the network instances that access the cloud services.
  final pulumi.Input<String> accessRegionId;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The IP address of the cloud service.
  final pulumi.Input<List<String>> cidrs;
  /// The description of the cloud service.
  final pulumi.Input<String> description;
  /// The domain name or IP address of the cloud service.
  final pulumi.Input<String> host;
  /// The region of the cloud service.
  final pulumi.Input<String> hostRegionId;
  /// The VPC associated with the cloud service.
  final pulumi.Input<String> hostVpcId;
  /// The ID of the route service.
  final pulumi.Input<String> id;
  /// The status of the cloud service. Valid values: `Active`, `Creating` and `Deleting`.
  final pulumi.Input<String> status;
  /// The update interval. Default value: 5. The value cannot be modified.
  final pulumi.Input<String> updateInterval;

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
  const GetRouteServicesService({
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
      accessRegionId: pulumi.Input.fromValue(map['accessRegionId'] as String),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      cidrs: pulumi.Input.fromValue((map['cidrs'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      hostRegionId: pulumi.Input.fromValue(map['hostRegionId'] as String),
      hostVpcId: pulumi.Input.fromValue(map['hostVpcId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updateInterval: pulumi.Input.fromValue(map['updateInterval'] as String),
    );
  }
}

