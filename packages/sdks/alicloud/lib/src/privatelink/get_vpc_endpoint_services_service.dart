// ignore_for_file: unused_element, unnecessary_cast


class GetVpcEndpointServicesService {
  /// Specifies whether to automatically accept endpoint connection requests. Valid values: : `true`, `false`.
  final bool autoAcceptConnection;
  /// The default maximum bandwidth of the endpoint connection.
  final int connectBandwidth;
  /// The ID of the Vpc Endpoint Service.
  final String id;
  /// The service state of the endpoint service. Default value: `Normal`. Valid values: `Normal`, `FinancialLocked` and `SecurityLocked`.
  final String serviceBusinessStatus;
  /// The description of the endpoint service.
  final String serviceDescription;
  /// The domain name of the endpoint service.
  final String serviceDomain;
  /// The ID of the endpoint service.
  final String serviceId;
  /// The state of the endpoint service. Valid values: `Active`, `Creating`, `Deleted`, `Deleting` and `Pending`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The name of the endpoint service.
  final String vpcEndpointServiceName;

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
      autoAcceptConnection: map['autoAcceptConnection'] as bool,
      connectBandwidth: map['connectBandwidth'] as int,
      id: map['id'] as String,
      serviceBusinessStatus: map['serviceBusinessStatus'] as String,
      serviceDescription: map['serviceDescription'] as String,
      serviceDomain: map['serviceDomain'] as String,
      serviceId: map['serviceId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcEndpointServiceName: map['vpcEndpointServiceName'] as String,
    );
  }
}

