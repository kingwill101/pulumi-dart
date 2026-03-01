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
    pulumi.Output<String>? associateType,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<bool>? routePropagationEnable,
    pulumi.Output<String>? routeTableName,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
  }) :
      associateType = pulumi.Input.asOptionalInput<String>(associateType),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      routePropagationEnable = pulumi.Input.asOptionalInput<bool>(routePropagationEnable),
      routeTableName = pulumi.Input.asOptionalInput<String>(routeTableName),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      associateType: map['associateType'] == null ? null : pulumi.Output.create<String>(map['associateType'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      routePropagationEnable: map['routePropagationEnable'] == null ? null : pulumi.Output.create<bool>(map['routePropagationEnable'] as bool),
      routeTableName: map['routeTableName'] == null ? null : pulumi.Output.create<String>(map['routeTableName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

