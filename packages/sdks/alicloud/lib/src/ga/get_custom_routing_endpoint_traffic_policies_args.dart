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
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointGroupId: (() { final guardedValue = map['endpointGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

