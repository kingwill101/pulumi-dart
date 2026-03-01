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
  GetVpcEndpointServicesArgs({
    bool? autoAcceptConnection,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? serviceBusinessStatus,
    String? status,
    Map<String, String>? tags,
    String? vpcEndpointServiceName,
  }) :
      autoAcceptConnection = pulumi.Input.asOptionalInput<bool>(autoAcceptConnection),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      serviceBusinessStatus = pulumi.Input.asOptionalInput<String>(serviceBusinessStatus),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcEndpointServiceName = pulumi.Input.asOptionalInput<String>(vpcEndpointServiceName);

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
      autoAcceptConnection: map['autoAcceptConnection'] == null ? null : map['autoAcceptConnection'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      serviceBusinessStatus: map['serviceBusinessStatus'] == null ? null : map['serviceBusinessStatus'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcEndpointServiceName: map['vpcEndpointServiceName'] == null ? null : map['vpcEndpointServiceName'] as String,
    );
  }
}

