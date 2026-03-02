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
    required this.acceleratorId,
    this.address,
    this.endpointGroupId,
    this.endpointId,
    this.ids,
    this.listenerId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

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
      acceleratorId: (map['acceleratorId'] as String).input(),
      address: map['address'] == null ? null : (map['address'] as String).input(),
      endpointGroupId: map['endpointGroupId'] == null ? null : (map['endpointGroupId'] as String).input(),
      endpointId: map['endpointId'] == null ? null : (map['endpointId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
    );
  }
}

