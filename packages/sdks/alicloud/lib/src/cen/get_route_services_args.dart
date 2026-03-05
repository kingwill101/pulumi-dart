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
    this.accessRegionId,
    required this.cenId,
    this.host,
    this.hostRegionId,
    this.hostVpcId,
    this.outputFile,
    this.status,
  });

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
      accessRegionId: (() { final guardedValue = map['accessRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostRegionId: (() { final guardedValue = map['hostRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostVpcId: (() { final guardedValue = map['hostVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

