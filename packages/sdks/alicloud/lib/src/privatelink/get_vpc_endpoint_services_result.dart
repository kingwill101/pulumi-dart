// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_services_service.dart';

/// Result data returned by getVpcEndpointServices.
class GetVpcEndpointServicesResult {
  /// Indicates whether endpoint connection requests are automatically accepted.
  final bool? autoAcceptConnection;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Vpc Endpoint Service names.
  final List<String> names;
  final String? outputFile;
  /// The service state of the endpoint service.
  final String? serviceBusinessStatus;
  /// A list of Vpc Endpoint Services. Each element contains the following attributes:
  final List<GetVpcEndpointServicesService> services;
  /// The state of the endpoint service.
  final String? status;
  /// The tags added to the resource.
  final Map<String, String>? tags;
  /// The name of the endpoint service.
  final String? vpcEndpointServiceName;

  /// Creates a new [GetVpcEndpointServicesResult].
  /// [autoAcceptConnection] Indicates whether endpoint connection requests are automatically accepted.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Vpc Endpoint Service names.
  /// [outputFile] Optional.
  /// [serviceBusinessStatus] The service state of the endpoint service.
  /// [services] A list of Vpc Endpoint Services. Each element contains the following attributes:
  /// [status] The state of the endpoint service.
  /// [tags] The tags added to the resource.
  /// [vpcEndpointServiceName] The name of the endpoint service.
  GetVpcEndpointServicesResult({
    this.autoAcceptConnection,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.serviceBusinessStatus,
    required this.services,
    this.status,
    this.tags,
    this.vpcEndpointServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAcceptConnection': ?autoAcceptConnection,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'serviceBusinessStatus': ?serviceBusinessStatus,
      'services': pulumi.Input.encodeList<GetVpcEndpointServicesService, Map<String, dynamic>>(services, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'vpcEndpointServiceName': ?vpcEndpointServiceName,
    };
  }

  factory GetVpcEndpointServicesResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServicesResult(
      autoAcceptConnection: (() { final guardedValue = map['autoAcceptConnection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceBusinessStatus: (() { final guardedValue = map['serviceBusinessStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      services: pulumi.Input.decodeList<GetVpcEndpointServicesService>(map['services']!, (value) => GetVpcEndpointServicesService.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcEndpointServiceName: (() { final guardedValue = map['vpcEndpointServiceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

