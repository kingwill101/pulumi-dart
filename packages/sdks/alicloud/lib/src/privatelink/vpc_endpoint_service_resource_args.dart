// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_vpc_endpoint_service_resource_vpc_endpoint_service_resource_args_doc}
/// The set of arguments for VpcEndpointServiceResource.
/// {@endtemplate}
/// {@macro pulumi_privatelink_vpc_endpoint_service_resource_vpc_endpoint_service_resource_args_doc}
class VpcEndpointServiceResourceArgs {
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;

  /// The service resource ID.
  final pulumi.Input<String> resourceId;

  /// Service resource type, value:
  final pulumi.Input<String> resourceType;

  /// The endpoint service ID.
  final pulumi.Input<String> serviceId;

  /// The ID of the zone to which the service resource belongs. (valid when the resource type is nlb/alb).
  final pulumi.Input<String>? zoneId;

  /// Creates a new [VpcEndpointServiceResourceArgs].
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [resourceId] The service resource ID.
  /// [resourceType] Service resource type, value:
  /// [serviceId] The endpoint service ID.
  /// [zoneId] The ID of the zone to which the service resource belongs. (valid when the resource type is nlb/alb).
  VpcEndpointServiceResourceArgs({
    this.dryRun,
    required this.resourceId,
    required this.resourceType,
    required this.serviceId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'resourceId': resourceId,
      'resourceType': resourceType,
      'serviceId': serviceId,
      'zoneId': ?zoneId,
    };
  }

  factory VpcEndpointServiceResourceArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointServiceResourceArgs(
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
