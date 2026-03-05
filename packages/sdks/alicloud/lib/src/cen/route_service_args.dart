// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_route_service_route_service_args_doc}
/// The set of arguments for RouteService.
/// {@endtemplate}
/// {@macro pulumi_cen_route_service_route_service_args_doc}
class RouteServiceArgs {
  /// The region of the network instances that access the cloud services.
  final pulumi.Input<String> accessRegionId;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The description of the cloud service.
  final pulumi.Input<String>? description;
  /// The domain name or IP address of the cloud service.
  final pulumi.Input<String> host;
  /// The region of the cloud service.
  final pulumi.Input<String> hostRegionId;
  /// The VPC associated with the cloud service.
  ///
  /// &gt; **NOTE:** The values of `host_region_id` and `access_region_id` must be consistent.
  final pulumi.Input<String> hostVpcId;

  /// Creates a new [RouteServiceArgs].
  /// [accessRegionId] The region of the network instances that access the cloud services.
  /// [cenId] The ID of the CEN instance.
  /// [description] The description of the cloud service.
  /// [host] The domain name or IP address of the cloud service.
  /// [hostRegionId] The region of the cloud service.
  /// [hostVpcId] The VPC associated with the cloud service.
  RouteServiceArgs({
    required this.accessRegionId,
    required this.cenId,
    this.description,
    required this.host,
    required this.hostRegionId,
    required this.hostVpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRegionId': accessRegionId,
      'cenId': cenId,
      'description': ?description,
      'host': host,
      'hostRegionId': hostRegionId,
      'hostVpcId': hostVpcId,
    };
  }

  factory RouteServiceArgs.fromMap(Map<String, dynamic> map) {
    return RouteServiceArgs(
      accessRegionId: pulumi.Input.fromValue(map['accessRegionId'] as String),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      hostRegionId: pulumi.Input.fromValue(map['hostRegionId'] as String),
      hostVpcId: pulumi.Input.fromValue(map['hostVpcId'] as String),
    );
  }
}

