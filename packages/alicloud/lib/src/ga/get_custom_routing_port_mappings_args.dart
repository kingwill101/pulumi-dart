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
    required String acceleratorId,
    String? endpointGroupId,
    String? listenerId,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? status,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      acceleratorId: map['acceleratorId'] as String,
      endpointGroupId: map['endpointGroupId'] == null ? null : map['endpointGroupId'] as String,
      listenerId: map['listenerId'] == null ? null : map['listenerId'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

