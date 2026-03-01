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
    required pulumi.Output<String> accessRegionId,
    required pulumi.Output<String> cenId,
    pulumi.Output<String>? description,
    required pulumi.Output<String> host,
    required pulumi.Output<String> hostRegionId,
    required pulumi.Output<String> hostVpcId,
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
      accessRegionId: pulumi.Output.create<String>(map['accessRegionId'] as String),
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      host: pulumi.Output.create<String>(map['host'] as String),
      hostRegionId: pulumi.Output.create<String>(map['hostRegionId'] as String),
      hostVpcId: pulumi.Output.create<String>(map['hostVpcId'] as String),
    );
  }
}

