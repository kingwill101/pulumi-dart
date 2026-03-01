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
    bool? dryRun,
    required String resourceId,
    required String resourceType,
    required String serviceId,
    String? zoneId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      resourceId: map['resourceId'] as String,
      resourceType: map['resourceType'] as String,
      serviceId: map['serviceId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

