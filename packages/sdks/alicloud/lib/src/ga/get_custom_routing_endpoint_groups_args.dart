// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ga_get_custom_routing_endpoint_groups_get_custom_routing_endpoint_groups_args_doc}
/// Arguments for getCustomRoutingEndpointGroups.
/// {@endtemplate}
/// {@macro pulumi_ga_get_custom_routing_endpoint_groups_get_custom_routing_endpoint_groups_args_doc}
class GetCustomRoutingEndpointGroupsArgs {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The ID of the endpoint group.
  final pulumi.Input<String>? endpointGroupId;
  /// A list of Custom Routing Endpoint Group IDs.
  final pulumi.Input<List<String>>? ids;
  /// The ID of the custom routing listener.
  final pulumi.Input<String>? listenerId;
  /// A regex string to filter results by Custom Routing Endpoint Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The status of the endpoint group. Valid Values: `init`, `active`, `updating`, `deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetCustomRoutingEndpointGroupsArgs].
  /// [acceleratorId] The ID of the GA instance.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [ids] A list of Custom Routing Endpoint Group IDs.
  /// [listenerId] The ID of the custom routing listener.
  /// [nameRegex] A regex string to filter results by Custom Routing Endpoint Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the endpoint group. Valid Values: `init`, `active`, `updating`, `deleting`.
  GetCustomRoutingEndpointGroupsArgs({
    required pulumi.Output<String> acceleratorId,
    pulumi.Output<String>? endpointGroupId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
  }) :
      acceleratorId = pulumi.Input.asInput<String>(acceleratorId),
      endpointGroupId = pulumi.Input.asOptionalInput<String>(endpointGroupId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'endpointGroupId': ?endpointGroupId,
      'ids': ?ids,
      'listenerId': ?listenerId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetCustomRoutingEndpointGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointGroupsArgs(
      acceleratorId: pulumi.Output.create<String>(map['acceleratorId'] as String),
      endpointGroupId: map['endpointGroupId'] == null ? null : pulumi.Output.create<String>(map['endpointGroupId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

