// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_custom_routing_endpoint_traffic_policies_get_custom_routing_endpoint_traffic_policies_args_doc}
/// Arguments for getCustomRoutingEndpointTrafficPolicies.
/// {@endtemplate}
/// {@macro pulumi_ga_get_custom_routing_endpoint_traffic_policies_get_custom_routing_endpoint_traffic_policies_args_doc}
class GetCustomRoutingEndpointTrafficPoliciesArgs {
  /// The ID of the GA instance to which the traffic policies belong.
  final pulumi.Input<String> acceleratorId;
  /// The IP addresses of the traffic policies.
  final pulumi.Input<String>? address;
  /// The ID of the endpoint group to which the traffic policies belong.
  final pulumi.Input<String>? endpointGroupId;
  /// The ID of the endpoint to which the traffic policies belong.
  final pulumi.Input<String>? endpointId;
  /// A list of Custom Routing Endpoint Traffic Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the listener to which the traffic policies belong.
  final pulumi.Input<String>? listenerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetCustomRoutingEndpointTrafficPoliciesArgs].
  /// [acceleratorId] The ID of the GA instance to which the traffic policies belong.
  /// [address] The IP addresses of the traffic policies.
  /// [endpointGroupId] The ID of the endpoint group to which the traffic policies belong.
  /// [endpointId] The ID of the endpoint to which the traffic policies belong.
  /// [ids] A list of Custom Routing Endpoint Traffic Policy IDs.
  /// [listenerId] The ID of the listener to which the traffic policies belong.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetCustomRoutingEndpointTrafficPoliciesArgs({
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<String>? address,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<String>? endpointId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      address = pulumi.Input.asOptionalInput<String>(address),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'address': ?address,
      'endpointGroupId': ?endpointGroupId,
      'endpointId': ?endpointId,
      'ids': ?ids,
      'listenerId': ?listenerId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetCustomRoutingEndpointTrafficPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointTrafficPoliciesArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      address: map['address'] == null ? null : pulumi.Output.create<String>(map['address'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
    );
  }
}

