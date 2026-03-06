// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_get_vpc_endpoint_services_get_vpc_endpoint_services_args_doc}
/// Arguments for getVpcEndpointServices.
/// {@endtemplate}
/// {@macro pulumi_privatelink_get_vpc_endpoint_services_get_vpc_endpoint_services_args_doc}
class GetVpcEndpointServicesArgs {
  /// Specifies whether to automatically accept endpoint connection requests. Valid values: : `true`, `false`.
  final pulumi.Input<bool>? autoAcceptConnection;
  /// A list of Vpc Endpoint Service IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Vpc Endpoint Service name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The service state of the endpoint service. Default value: `Normal`. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  final pulumi.Input<String>? serviceBusinessStatus;
  /// The state of the endpoint service. Valid values: `Active`, `Creating`, `Deleted`, `Deleting` and `Pending`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the endpoint service.
  final pulumi.Input<String>? vpcEndpointServiceName;

  /// Creates a new [GetVpcEndpointServicesArgs].
  /// [autoAcceptConnection] Specifies whether to automatically accept endpoint connection requests. Valid values: : `true`, `false`.
  /// [ids] A list of Vpc Endpoint Service IDs.
  /// [nameRegex] A regex string to filter results by Vpc Endpoint Service name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceBusinessStatus] The service state of the endpoint service. Default value: `Normal`. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  /// [status] The state of the endpoint service. Valid values: `Active`, `Creating`, `Deleted`, `Deleting` and `Pending`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcEndpointServiceName] The name of the endpoint service.
  const GetVpcEndpointServicesArgs({
    this.autoAcceptConnection,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.serviceBusinessStatus,
    this.status,
    this.tags,
    this.vpcEndpointServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAcceptConnection': ?autoAcceptConnection,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'serviceBusinessStatus': ?serviceBusinessStatus,
      'status': ?status,
      'tags': ?tags,
      'vpcEndpointServiceName': ?vpcEndpointServiceName,
    };
  }

  factory GetVpcEndpointServicesArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServicesArgs(
      autoAcceptConnection: (() { final guardedValue = map['autoAcceptConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceBusinessStatus: (() { final guardedValue = map['serviceBusinessStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcEndpointServiceName: (() { final guardedValue = map['vpcEndpointServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

