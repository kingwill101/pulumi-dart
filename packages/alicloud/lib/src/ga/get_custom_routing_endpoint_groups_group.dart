// ignore_for_file: unused_element, unnecessary_cast


class GetCustomRoutingEndpointGroupsGroup {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// The name of the endpoint group.
  final String customRoutingEndpointGroupName;
  /// The description of the endpoint group.
  final String description;
  /// The ID of the endpoint group.
  final String endpointGroupId;
  /// The list of endpoint group IP addresses.
  final List<String> endpointGroupIpLists;
  /// The ID of the region where the endpoint group is created.
  final String endpointGroupRegion;
  /// The endpoint group IP addresses to be confirmed after the GA instance is upgraded.
  final List<String> endpointGroupUnconfirmedIpLists;
  /// The id of the Custom Routing Endpoint Group.
  final String id;
  /// The ID of the custom routing listener.
  final String listenerId;
  /// The status of the endpoint group. Valid Values: `init`, `active`, `updating`, `deleting`.
  final String status;

  /// Creates a new [GetCustomRoutingEndpointGroupsGroup].
  /// [acceleratorId] The ID of the GA instance.
  /// [customRoutingEndpointGroupName] The name of the endpoint group.
  /// [description] The description of the endpoint group.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [endpointGroupIpLists] The list of endpoint group IP addresses.
  /// [endpointGroupRegion] The ID of the region where the endpoint group is created.
  /// [endpointGroupUnconfirmedIpLists] The endpoint group IP addresses to be confirmed after the GA instance is upgraded.
  /// [id] The id of the Custom Routing Endpoint Group.
  /// [listenerId] The ID of the custom routing listener.
  /// [status] The status of the endpoint group. Valid Values: `init`, `active`, `updating`, `deleting`.
  GetCustomRoutingEndpointGroupsGroup({
    required this.acceleratorId,
    required this.customRoutingEndpointGroupName,
    required this.description,
    required this.endpointGroupId,
    required this.endpointGroupIpLists,
    required this.endpointGroupRegion,
    required this.endpointGroupUnconfirmedIpLists,
    required this.id,
    required this.listenerId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'customRoutingEndpointGroupName': customRoutingEndpointGroupName,
      'description': description,
      'endpointGroupId': endpointGroupId,
      'endpointGroupIpLists': endpointGroupIpLists,
      'endpointGroupRegion': endpointGroupRegion,
      'endpointGroupUnconfirmedIpLists': endpointGroupUnconfirmedIpLists,
      'id': id,
      'listenerId': listenerId,
      'status': status,
    };
  }

  factory GetCustomRoutingEndpointGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingEndpointGroupsGroup(
      acceleratorId: map['acceleratorId'] as String,
      customRoutingEndpointGroupName: map['customRoutingEndpointGroupName'] as String,
      description: map['description'] as String,
      endpointGroupId: map['endpointGroupId'] as String,
      endpointGroupIpLists: (map['endpointGroupIpLists'] as List).cast<String>(),
      endpointGroupRegion: map['endpointGroupRegion'] as String,
      endpointGroupUnconfirmedIpLists: (map['endpointGroupUnconfirmedIpLists'] as List).cast<String>(),
      id: map['id'] as String,
      listenerId: map['listenerId'] as String,
      status: map['status'] as String,
    );
  }
}

