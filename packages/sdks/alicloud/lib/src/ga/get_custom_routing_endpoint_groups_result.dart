// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_endpoint_groups_group.dart';

/// Result data returned by getCustomRoutingEndpointGroups.
class GetCustomRoutingEndpointGroupsResult {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// The ID of the Custom Routing Endpoint Group.
  final String? endpointGroupId;
  /// A list of Custom Routing Endpoint Groups. Each element contains the following attributes:
  final List<GetCustomRoutingEndpointGroupsGroup> groups;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  /// The ID of the custom routing listener.
  final String? listenerId;
  final String? nameRegex;
  /// A list of Custom Routing Endpoint Group names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  /// The status of the endpoint group.
  final String? status;

  /// Creates a new [GetCustomRoutingEndpointGroupsResult].
  /// [acceleratorId] The ID of the GA instance.
  /// [endpointGroupId] The ID of the Custom Routing Endpoint Group.
  /// [groups] A list of Custom Routing Endpoint Groups. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [listenerId] The ID of the custom routing listener.
  /// [nameRegex] Optional.
  /// [names] A list of Custom Routing Endpoint Group names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the endpoint group.
  GetCustomRoutingEndpointGroupsResult({
    required this.acceleratorId,
    this.endpointGroupId,
    required this.groups,
    required this.id,
    required this.ids,
    this.listenerId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'endpointGroupId': ?endpointGroupId,
      'groups': pulumi.Input.encodeList<GetCustomRoutingEndpointGroupsGroup, Map<String, dynamic>>(groups, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'listenerId': ?listenerId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetCustomRoutingEndpointGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointGroupsResult(
      acceleratorId: map['acceleratorId'] as String,
      endpointGroupId: map['endpointGroupId'] == null ? null : map['endpointGroupId'] as String,
      groups: pulumi.Input.decodeList<GetCustomRoutingEndpointGroupsGroup>(map['groups'], (value) => GetCustomRoutingEndpointGroupsGroup.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      listenerId: map['listenerId'] == null ? null : map['listenerId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

