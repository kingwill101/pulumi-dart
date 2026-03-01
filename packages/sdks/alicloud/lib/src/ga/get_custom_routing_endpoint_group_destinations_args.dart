// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_custom_routing_endpoint_group_destinations_get_custom_routing_endpoint_group_destinations_args_doc}
/// Arguments for getCustomRoutingEndpointGroupDestinations.
/// {@endtemplate}
/// {@macro pulumi_ga_get_custom_routing_endpoint_group_destinations_get_custom_routing_endpoint_group_destinations_args_doc}
class GetCustomRoutingEndpointGroupDestinationsArgs {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the endpoint group.
  final pulumi.Input<String>? endpointGroupId;
  /// The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final pulumi.Input<int>? fromPort;
  /// A list of Custom Routing Endpoint Group Destination IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the listener.
  final pulumi.Input<String>? listenerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  final pulumi.Input<List<String>>? protocols;
  /// The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  final pulumi.Input<int>? toPort;

  /// Creates a new [GetCustomRoutingEndpointGroupDestinationsArgs].
  /// [acceleratorId] The ID of the GA instance.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [fromPort] The start port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  /// [ids] A list of Custom Routing Endpoint Group Destination IDs.
  /// [listenerId] The ID of the listener.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [protocols] The backend service protocol of the endpoint group. Valid values: `TCP`, `UDP`, `TCP, UDP`.
  /// [toPort] The end port of the backend service port range of the endpoint group. The `from_port` value must be smaller than or equal to the `to_port` value. Valid values: `1` to `65499`.
  GetCustomRoutingEndpointGroupDestinationsArgs({
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<int>? fromPort,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<List<String>>? protocols,
    pulumi.Output<int>? toPort,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      fromPort = pulumi.Input.asOptionalInput<int>(fromPort),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      protocols = pulumi.Input.asOptionalInput<List<String>>(protocols),
      toPort = pulumi.Input.asOptionalInput<int>(toPort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'endpointGroupId': ?endpointGroupId,
      'fromPort': ?fromPort,
      'ids': ?ids,
      'listenerId': ?listenerId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'protocols': ?protocols,
      'toPort': ?toPort,
    };
  }

  factory GetCustomRoutingEndpointGroupDestinationsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointGroupDestinationsArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      fromPort: map['fromPort'] == null ? null : pulumi.Output.create<int>(map['fromPort'] as int),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      protocols: map['protocols'] == null ? null : pulumi.Output.create<List<String>>((map['protocols'] as List).cast<String>()),
      toPort: map['toPort'] == null ? null : pulumi.Output.create<int>(map['toPort'] as int),
    );
  }
}

