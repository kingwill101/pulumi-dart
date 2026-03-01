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
  /// > **NOTE:** The values of `host_region_id` and `access_region_id` must be consistent.
  final pulumi.Input<String> hostVpcId;

  /// Creates a new [RouteServiceArgs].
  /// [accessRegionId] The region of the network instances that access the cloud services.
  /// [cenId] The ID of the CEN instance.
  /// [description] The description of the cloud service.
  /// [host] The domain name or IP address of the cloud service.
  /// [hostRegionId] The region of the cloud service.
  /// [hostVpcId] The VPC associated with the cloud service.
  RouteServiceArgs({
    required String accessRegionId,
    required String cenId,
    String? description,
    required String host,
    required String hostRegionId,
    required String hostVpcId,
  }) :
      accessRegionId = pulumi.Input.asInput<String>(accessRegionId),
      cenId = pulumi.Input.asInput<String>(cenId),
      description = pulumi.Input.asOptionalInput<String>(description),
      host = pulumi.Input.asInput<String>(host),
      hostRegionId = pulumi.Input.asInput<String>(hostRegionId),
      hostVpcId = pulumi.Input.asInput<String>(hostVpcId);

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
      accessRegionId: map['accessRegionId'] as String,
      cenId: map['cenId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      host: map['host'] as String,
      hostRegionId: map['hostRegionId'] as String,
      hostVpcId: map['hostVpcId'] as String,
    );
  }
}

