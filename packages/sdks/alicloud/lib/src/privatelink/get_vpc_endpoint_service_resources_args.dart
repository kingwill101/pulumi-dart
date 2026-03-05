// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_get_vpc_endpoint_service_resources_get_vpc_endpoint_service_resources_args_doc}
/// Arguments for getVpcEndpointServiceResources.
/// {@endtemplate}
/// {@macro pulumi_privatelink_get_vpc_endpoint_service_resources_get_vpc_endpoint_service_resources_args_doc}
class GetVpcEndpointServiceResourcesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of Vpc Endpoint Service.
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetVpcEndpointServiceResourcesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceId] The ID of Vpc Endpoint Service.
  GetVpcEndpointServiceResourcesArgs({
    this.outputFile,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'serviceId': serviceId,
    };
  }

  factory GetVpcEndpointServiceResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceResourcesArgs(
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}

