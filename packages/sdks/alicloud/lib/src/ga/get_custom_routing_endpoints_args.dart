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
    required this.acceleratorId,
    this.endpointGroupId,
    this.ids,
    this.listenerId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

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
      acceleratorId: (map['acceleratorId'] as String).input(),
      endpointGroupId: map['endpointGroupId'] == null ? null : (map['endpointGroupId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

