// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointServicesService {
  /// Specifies whether to automatically accept endpoint connection requests. Valid values: : `true`, `false`.
  final pulumi.Input<bool> autoAcceptConnection;
  /// The default maximum bandwidth of the endpoint connection.
  final pulumi.Input<int> connectBandwidth;
  /// The ID of the Vpc Endpoint Service.
  final pulumi.Input<String> id;
  /// The service state of the endpoint service. Default value: `Normal`. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  final pulumi.Input<String> serviceBusinessStatus;
  /// The description of the endpoint service.
  final pulumi.Input<String> serviceDescription;
  /// The domain name of the endpoint service.
  final pulumi.Input<String> serviceDomain;
  /// The ID of the endpoint service.
  final pulumi.Input<String> serviceId;
  /// The state of the endpoint service. Valid values: `Active`, `Creating`, `Deleted`, `Deleting` and `Pending`.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The name of the endpoint service.
  final pulumi.Input<String> vpcEndpointServiceName;

  /// Creates a new [GetVpcEndpointServicesService].
  /// [autoAcceptConnection] Specifies whether to automatically accept endpoint connection requests. Valid values: : `true`, `false`.
  /// [connectBandwidth] The default maximum bandwidth of the endpoint connection.
  /// [id] The ID of the Vpc Endpoint Service.
  /// [serviceBusinessStatus] The service state of the endpoint service. Default value: `Normal`. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  /// [serviceDescription] The description of the endpoint service.
  /// [serviceDomain] The domain name of the endpoint service.
  /// [serviceId] The ID of the endpoint service.
  /// [status] The state of the endpoint service. Valid values: `Active`, `Creating`, `Deleted`, `Deleting` and `Pending`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcEndpointServiceName] The name of the endpoint service.
  GetVpcEndpointServicesService({
    required this.autoAcceptConnection,
    required this.connectBandwidth,
    required this.id,
    required this.serviceBusinessStatus,
    required this.serviceDescription,
    required this.serviceDomain,
    required this.serviceId,
    required this.status,
    required this.tags,
    required this.vpcEndpointServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAcceptConnection': autoAcceptConnection,
      'connectBandwidth': connectBandwidth,
      'id': id,
      'serviceBusinessStatus': serviceBusinessStatus,
      'serviceDescription': serviceDescription,
      'serviceDomain': serviceDomain,
      'serviceId': serviceId,
      'status': status,
      'tags': tags,
      'vpcEndpointServiceName': vpcEndpointServiceName,
    };
  }

  factory GetVpcEndpointServicesService.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServicesService(
      autoAcceptConnection: (map['autoAcceptConnection'] as bool).input(),
      connectBandwidth: (map['connectBandwidth'] as int).input(),
      id: (map['id'] as String).input(),
      serviceBusinessStatus: (map['serviceBusinessStatus'] as String).input(),
      serviceDescription: (map['serviceDescription'] as String).input(),
      serviceDomain: (map['serviceDomain'] as String).input(),
      serviceId: (map['serviceId'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcEndpointServiceName: (map['vpcEndpointServiceName'] as String).input(),
    );
  }
}

