// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_endpoint_group_destinations_custom_routing_endpoint_group_destination.dart';

/// Result data returned by getCustomRoutingEndpointGroupDestinations.
class GetCustomRoutingEndpointGroupDestinationsResult {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// A list of Custom Routing Endpoint Group Destinations. Each element contains the following attributes:
  final List<GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination> customRoutingEndpointGroupDestinations;
  /// The ID of the Custom Routing Endpoint Group.
  final String? endpointGroupId;
  /// The start port of the backend service port range of the endpoint group.
  final int? fromPort;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the listener.
  final String? listenerId;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The backend service protocol of the endpoint group.
  final List<String>? protocols;
  /// The end port of the backend service port range of the endpoint group.
  final int? toPort;

  /// Creates a new [GetCustomRoutingEndpointGroupDestinationsResult].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointGroupDestinations] A list of Custom Routing Endpoint Group Destinations. Each element contains the following attributes:
  /// [endpointGroupId] The ID of the Custom Routing Endpoint Group.
  /// [fromPort] The start port of the backend service port range of the endpoint group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerId] The ID of the listener.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [protocols] The backend service protocol of the endpoint group.
  /// [toPort] The end port of the backend service port range of the endpoint group.
  const GetCustomRoutingEndpointGroupDestinationsResult({
    required this.acceleratorId,
    required this.customRoutingEndpointGroupDestinations,
    this.endpointGroupId,
    this.fromPort,
    required this.id,
    required this.ids,
    this.listenerId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.protocols,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'customRoutingEndpointGroupDestinations': pulumi.Input.encodeList<GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination, Map<String, dynamic>>(customRoutingEndpointGroupDestinations, (value) => value.toMap()),
      'endpointGroupId': ?endpointGroupId,
      'fromPort': ?fromPort,
      'id': id,
      'ids': ids,
      'listenerId': ?listenerId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'protocols': ?protocols,
      'toPort': ?toPort,
    };
  }

  factory GetCustomRoutingEndpointGroupDestinationsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointGroupDestinationsResult(
      acceleratorId: map['acceleratorId'] as String,
      customRoutingEndpointGroupDestinations: pulumi.Input.decodeList<GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination>(map['customRoutingEndpointGroupDestinations']!, (value) => GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination.fromMap((value as Map).cast<String, dynamic>())),
      endpointGroupId: (() { final guardedValue = map['endpointGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

