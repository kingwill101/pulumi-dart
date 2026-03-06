// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_endpoint_traffic_policies_custom_routing_endpoint_traffic_policy.dart';

/// Result data returned by getCustomRoutingEndpointTrafficPolicies.
class GetCustomRoutingEndpointTrafficPoliciesResult {
  /// The ID of the GA instance to which the endpoint belongs.
  final String acceleratorId;
  /// The IP address of the traffic policy.
  final String? address;
  /// A list of Custom Routing Endpoint Traffic Policies. Each element contains the following attributes:
  final List<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy> customRoutingEndpointTrafficPolicies;
  /// The ID of the Custom Routing Endpoint Group.
  final String? endpointGroupId;
  /// The ID of the Custom Routing Endpoint.
  final String? endpointId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the custom routing listener to which the endpoint belongs.
  final String? listenerId;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// Creates a new [GetCustomRoutingEndpointTrafficPoliciesResult].
  /// [acceleratorId] The ID of the GA instance to which the endpoint belongs.
  /// [address] The IP address of the traffic policy.
  /// [customRoutingEndpointTrafficPolicies] A list of Custom Routing Endpoint Traffic Policies. Each element contains the following attributes:
  /// [endpointGroupId] The ID of the Custom Routing Endpoint Group.
  /// [endpointId] The ID of the Custom Routing Endpoint.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerId] The ID of the custom routing listener to which the endpoint belongs.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  const GetCustomRoutingEndpointTrafficPoliciesResult({
    required this.acceleratorId,
    this.address,
    required this.customRoutingEndpointTrafficPolicies,
    this.endpointGroupId,
    this.endpointId,
    required this.id,
    required this.ids,
    this.listenerId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'address': ?address,
      'customRoutingEndpointTrafficPolicies': pulumi.Input.encodeList<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy, Map<String, dynamic>>(customRoutingEndpointTrafficPolicies, (value) => value.toMap()),
      'endpointGroupId': ?endpointGroupId,
      'endpointId': ?endpointId,
      'id': id,
      'ids': ids,
      'listenerId': ?listenerId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetCustomRoutingEndpointTrafficPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointTrafficPoliciesResult(
      acceleratorId: map['acceleratorId'] as String,
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customRoutingEndpointTrafficPolicies: pulumi.Input.decodeList<GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy>(map['customRoutingEndpointTrafficPolicies']!, (value) => GetCustomRoutingEndpointTrafficPoliciesCustomRoutingEndpointTrafficPolicy.fromMap((value as Map).cast<String, dynamic>())),
      endpointGroupId: (() { final guardedValue = map['endpointGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: (() { final guardedValue = map['listenerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}

