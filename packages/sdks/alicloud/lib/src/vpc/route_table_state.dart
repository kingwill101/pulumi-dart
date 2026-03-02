// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteTable resources.
class RouteTableState {
  /// The type of cloud resource that is bound to the routing table. Value:
  /// - `VSwitch`: switch.
  /// - `Gateway`:IPv4 Gateway.
  final pulumi.Input<String>? associateType;
  /// The creation time of the routing table
  final pulumi.Input<String>? createTime;
  /// Description of the routing table.
  final pulumi.Input<String>? description;
  /// . Field 'name' has been deprecated from provider version 1.119.1. New field 'route_table_name' instead.
  final pulumi.Input<String>? name;
  /// Resource group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// Route Table Receive Propagate Route State
  final pulumi.Input<bool>? routePropagationEnable;
  /// The name of the routing table.
  final pulumi.Input<String>? routeTableName;
  /// Routing table state
  final pulumi.Input<String>? status;
  /// The tag
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of VPC.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [RouteTableState].
  /// [associateType] The type of cloud resource that is bound to the routing table. Value:
  /// [createTime] The creation time of the routing table
  /// [description] Description of the routing table.
  /// [name] . Field 'name' has been deprecated from provider version 1.119.1. New field 'route_table_name' instead.
  /// [resourceGroupId] Resource group ID.
  /// [routePropagationEnable] Route Table Receive Propagate Route State
  /// [routeTableName] The name of the routing table.
  /// [status] Routing table state
  /// [tags] The tag
  /// [vpcId] The ID of VPC.
  RouteTableState({
    this.associateType,
    this.createTime,
    this.description,
    this.name,
    this.resourceGroupId,
    this.routePropagationEnable,
    this.routeTableName,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateType': ?associateType,
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'routePropagationEnable': ?routePropagationEnable,
      'routeTableName': ?routeTableName,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory RouteTableState.fromMap(Map<String, dynamic> map) {
    return RouteTableState(
      associateType: map['associateType'] == null ? null : (map['associateType']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      routePropagationEnable: map['routePropagationEnable'] == null ? null : (map['routePropagationEnable']! as bool).input(),
      routeTableName: map['routeTableName'] == null ? null : (map['routeTableName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

