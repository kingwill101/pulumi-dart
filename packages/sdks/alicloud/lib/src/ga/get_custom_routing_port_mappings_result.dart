// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_port_mappings_custom_routing_port_mapping.dart';

/// Result data returned by getCustomRoutingPortMappings.
class GetCustomRoutingPortMappingsResult {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// A list of Custom Routing Port Mappings. Each element contains the following attributes:
  final List<GetCustomRoutingPortMappingsCustomRoutingPortMapping> customRoutingPortMappings;
  /// The ID of the endpoint group.
  final String? endpointGroupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ID of the listener.
  final String? listenerId;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The access policy of traffic for the backend instance.
  final String? status;

  /// Creates a new [GetCustomRoutingPortMappingsResult].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingPortMappings] A list of Custom Routing Port Mappings. Each element contains the following attributes:
  /// [endpointGroupId] The ID of the endpoint group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [listenerId] The ID of the listener.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The access policy of traffic for the backend instance.
  const GetCustomRoutingPortMappingsResult({
    required this.acceleratorId,
    required this.customRoutingPortMappings,
    this.endpointGroupId,
    required this.id,
    this.listenerId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'customRoutingPortMappings': pulumi.Input.encodeList<GetCustomRoutingPortMappingsCustomRoutingPortMapping, Map<String, dynamic>>(customRoutingPortMappings, (value) => value.toMap()),
      'endpointGroupId': ?endpointGroupId,
      'id': id,
      'listenerId': ?listenerId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetCustomRoutingPortMappingsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingPortMappingsResult(
      acceleratorId: map['acceleratorId'] as String,
      customRoutingPortMappings: pulumi.Input.decodeList<GetCustomRoutingPortMappingsCustomRoutingPortMapping>(map['customRoutingPortMappings']!, (value) => GetCustomRoutingPortMappingsCustomRoutingPortMapping.fromMap((value as Map).cast<String, dynamic>())),
      endpointGroupId: (() { final guardedValue = map['endpointGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

