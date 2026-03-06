// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_basic_endpoints_endpoint.dart';

/// Result data returned by getBasicEndpoints.
class GetBasicEndpointsResult {
  /// The ID of the Basic Endpoint Group.
  final String endpointGroupId;
  /// The ID of the Basic Endpoint.
  final String? endpointId;
  /// The type of the Basic Endpoint.
  final String? endpointType;
  /// A list of Global Accelerator Basic Endpoints. Each element contains the following attributes:
  final List<GetBasicEndpointsEndpoint> endpoints;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? name;
  final String? nameRegex;
  /// A list of Global Accelerator Basic Endpoint names.
  final List<String> names;
  final String? outputFile;
  /// The status of the Basic Endpoint.
  final String? status;

  /// Creates a new [GetBasicEndpointsResult].
  /// [endpointGroupId] The ID of the Basic Endpoint Group.
  /// [endpointId] The ID of the Basic Endpoint.
  /// [endpointType] The type of the Basic Endpoint.
  /// [endpoints] A list of Global Accelerator Basic Endpoints. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Global Accelerator Basic Endpoint names.
  /// [outputFile] Optional.
  /// [status] The status of the Basic Endpoint.
  const GetBasicEndpointsResult({
    required this.endpointGroupId,
    this.endpointId,
    this.endpointType,
    required this.endpoints,
    required this.id,
    required this.ids,
    this.name,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointGroupId': endpointGroupId,
      'endpointId': ?endpointId,
      'endpointType': ?endpointType,
      'endpoints': pulumi.Input.encodeList<GetBasicEndpointsEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetBasicEndpointsResult.fromMap(Map<String, dynamic> map) {
    return GetBasicEndpointsResult(
      endpointGroupId: map['endpointGroupId'] as String,
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointType: (() { final guardedValue = map['endpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoints: pulumi.Input.decodeList<GetBasicEndpointsEndpoint>(map['endpoints']!, (value) => GetBasicEndpointsEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

