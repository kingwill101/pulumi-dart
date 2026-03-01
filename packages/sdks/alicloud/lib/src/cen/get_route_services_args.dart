// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_route_services_get_route_services_args_doc}
/// Arguments for getRouteServices.
/// {@endtemplate}
/// {@macro pulumi_cen_get_route_services_get_route_services_args_doc}
class GetRouteServicesArgs {
  /// The region of the network instances that access the cloud services.
  final pulumi.Input<String>? accessRegionId;
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The domain name or IP address of the cloud service.
  final pulumi.Input<String>? host;
  /// The region of the cloud service.
  final pulumi.Input<String>? hostRegionId;
  /// The VPC associated with the cloud service.
  final pulumi.Input<String>? hostVpcId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the cloud service. Valid values: `Active`, `Creating` and `Deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetRouteServicesArgs].
  /// [accessRegionId] The region of the network instances that access the cloud services.
  /// [cenId] The ID of the CEN instance.
  /// [host] The domain name or IP address of the cloud service.
  /// [hostRegionId] The region of the cloud service.
  /// [hostVpcId] The VPC associated with the cloud service.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the cloud service. Valid values: `Active`, `Creating` and `Deleting`.
  GetRouteServicesArgs({
    pulumi.Output<String>? accessRegionId,
    required pulumi.Output<String> cenId,
    pulumi.Output<String>? host,
    pulumi.Output<String>? hostRegionId,
    pulumi.Output<String>? hostVpcId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      accessRegionId = pulumi.Input.asOptionalInput<String>(accessRegionId),
      cenId = pulumi.Input.asInput<String>(cenId),
      host = pulumi.Input.asOptionalInput<String>(host),
      hostRegionId = pulumi.Input.asOptionalInput<String>(hostRegionId),
      hostVpcId = pulumi.Input.asOptionalInput<String>(hostVpcId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRegionId': ?accessRegionId,
      'cenId': cenId,
      'host': ?host,
      'hostRegionId': ?hostRegionId,
      'hostVpcId': ?hostVpcId,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetRouteServicesArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteServicesArgs(
      accessRegionId: map['accessRegionId'] == null ? null : pulumi.Output.create<String>(map['accessRegionId'] as String),
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      hostRegionId: map['hostRegionId'] == null ? null : pulumi.Output.create<String>(map['hostRegionId'] as String),
      hostVpcId: map['hostVpcId'] == null ? null : pulumi.Output.create<String>(map['hostVpcId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

