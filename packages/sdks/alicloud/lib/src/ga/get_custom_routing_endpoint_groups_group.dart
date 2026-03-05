// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomRoutingEndpointGroupsGroup {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The name of the endpoint group.
  final pulumi.Input<String> customRoutingEndpointGroupName;
  /// The description of the endpoint group.
  final pulumi.Input<String> description;
  /// The ID of the endpoint group.
  final pulumi.Input<String> endpointGroupId;
  /// The list of endpoint group IP addresses.
  final pulumi.Input<List<String>> endpointGroupIpLists;
  /// The ID of the region where the endpoint group is created.
  final pulumi.Input<String> endpointGroupRegion;
  /// The endpoint group IP addresses to be confirmed after the GA instance is upgraded.
  final pulumi.Input<List<String>> endpointGroupUnconfirmedIpLists;
  /// The id of the Custom Routing Endpoint Group.
  final pulumi.Input<String> id;
  /// The ID of the custom routing listener.
  final pulumi.Input<String> listenerId;
  /// The status of the endpoint group. Valid Values: `init`, `active`, `updating`, `deleting`.
  final pulumi.Input<String> status;

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
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      customRoutingEndpointGroupName: pulumi.Input.fromValue(map['customRoutingEndpointGroupName'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      endpointGroupIpLists: pulumi.Input.fromValue((map['endpointGroupIpLists'] as List).cast<String>()),
      endpointGroupRegion: pulumi.Input.fromValue(map['endpointGroupRegion'] as String),
      endpointGroupUnconfirmedIpLists: pulumi.Input.fromValue((map['endpointGroupUnconfirmedIpLists'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

