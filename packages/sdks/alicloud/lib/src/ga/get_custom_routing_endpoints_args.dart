// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_custom_routing_endpoints_get_custom_routing_endpoints_args_doc}
/// Arguments for getCustomRoutingEndpoints.
/// {@endtemplate}
/// {@macro pulumi_ga_get_custom_routing_endpoints_get_custom_routing_endpoints_args_doc}
class GetCustomRoutingEndpointsArgs {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the endpoint group.
  final pulumi.Input<String>? endpointGroupId;
  /// A list of Custom Routing Endpoint IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the custom routing listener.
  final pulumi.Input<String>? listenerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetCustomRoutingEndpointsArgs].
  /// [acceleratorId] The ID of the GA instance.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [ids] A list of Custom Routing Endpoint IDs.
  /// [listenerId] The ID of the custom routing listener.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetCustomRoutingEndpointsArgs({
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'endpointGroupId': ?endpointGroupId,
      'ids': ?ids,
      'listenerId': ?listenerId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetCustomRoutingEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointsArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
    );
  }
}

