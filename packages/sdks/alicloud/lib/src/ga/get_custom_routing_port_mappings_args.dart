// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_custom_routing_port_mappings_get_custom_routing_port_mappings_args_doc}
/// Arguments for getCustomRoutingPortMappings.
/// {@endtemplate}
/// {@macro pulumi_ga_get_custom_routing_port_mappings_get_custom_routing_port_mappings_args_doc}
class GetCustomRoutingPortMappingsArgs {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the endpoint group.
  final pulumi.Input<String>? endpointGroupId;
  /// The ID of the listener.
  final pulumi.Input<String>? listenerId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The access policy of traffic for the backend instance. Valid Values: `allow`, `deny`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetCustomRoutingPortMappingsArgs].
  /// [acceleratorId] The ID of the GA instance.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [listenerId] The ID of the listener.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The access policy of traffic for the backend instance. Valid Values: `allow`, `deny`.
  GetCustomRoutingPortMappingsArgs({
    required this.acceleratorId,
    this.endpointGroupId,
    this.listenerId,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'endpointGroupId': ?endpointGroupId,
      'listenerId': ?listenerId,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetCustomRoutingPortMappingsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingPortMappingsArgs(
      acceleratorId: (map['acceleratorId'] as String).input(),
      endpointGroupId: map['endpointGroupId'] == null ? null : (map['endpointGroupId'] as String).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

