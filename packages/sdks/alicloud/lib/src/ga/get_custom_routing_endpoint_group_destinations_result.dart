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
  GetCustomRoutingEndpointGroupDestinationsResult({
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
      customRoutingEndpointGroupDestinations: pulumi.Input.decodeList<GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination>(map['customRoutingEndpointGroupDestinations'], (value) => GetCustomRoutingEndpointGroupDestinationsCustomRoutingEndpointGroupDestination.fromMap((value as Map).cast<String, dynamic>())),
      endpointGroupId: map['endpointGroupId'] == null ? null : map['endpointGroupId']! as String,
      fromPort: map['fromPort'] == null ? null : map['fromPort']! as int,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: map['listenerId'] == null ? null : map['listenerId']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      protocols: map['protocols'] == null ? null : (map['protocols']! as List).cast<String>(),
      toPort: map['toPort'] == null ? null : map['toPort']! as int,
    );
  }
}

