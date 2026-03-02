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
    required this.acceleratorId,
    this.endpointGroupId,
    this.ids,
    this.listenerId,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

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
      acceleratorId: (map['acceleratorId'] as String).input(),
      endpointGroupId: map['endpointGroupId'] == null ? null : (map['endpointGroupId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

