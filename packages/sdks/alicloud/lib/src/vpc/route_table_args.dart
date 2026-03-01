// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_route_table_route_table_args_doc}
/// The set of arguments for RouteTable.
/// {@endtemplate}
/// {@macro pulumi_vpc_route_table_route_table_args_doc}
class RouteTableArgs {
  /// The type of cloud resource that is bound to the routing table. Value:
  /// - `VSwitch`: switch.
  /// - `Gateway`:IPv4 Gateway.
  final pulumi.Input<String>? associateType;
  /// Description of the routing table.
  final pulumi.Input<String>? description;
  /// . Field 'name' has been deprecated from provider version 1.119.1. New field 'route_table_name' instead.
  final pulumi.Input<String>? name;
  /// Route Table Receive Propagate Route State
  final pulumi.Input<bool>? routePropagationEnable;
  /// The name of the routing table.
  final pulumi.Input<String>? routeTableName;
  /// The tag
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of VPC.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String> vpcId;

  /// Creates a new [RouteTableArgs].
  /// [associateType] The type of cloud resource that is bound to the routing table. Value:
  /// [description] Description of the routing table.
  /// [name] . Field 'name' has been deprecated from provider version 1.119.1. New field 'route_table_name' instead.
  /// [routePropagationEnable] Route Table Receive Propagate Route State
  /// [routeTableName] The name of the routing table.
  /// [tags] The tag
  /// [vpcId] The ID of VPC.
  RouteTableArgs({
    pulumi.Output<String>? associateType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? routePropagationEnable,
    pulumi.Output<String>? routeTableName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
  }) :
      associateType = pulumi.Input.asOptionalInput<String>(associateType),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      routePropagationEnable = pulumi.Input.asOptionalInput<bool>(routePropagationEnable),
      routeTableName = pulumi.Input.asOptionalInput<String>(routeTableName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateType': ?associateType,
      'description': ?description,
      'name': ?name,
      'routePropagationEnable': ?routePropagationEnable,
      'routeTableName': ?routeTableName,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory RouteTableArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableArgs(
      associateType: map['associateType'] == null ? null : pulumi.Output.create<String>(map['associateType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      routePropagationEnable: map['routePropagationEnable'] == null ? null : pulumi.Output.create<bool>(map['routePropagationEnable'] as bool),
      routeTableName: map['routeTableName'] == null ? null : pulumi.Output.create<String>(map['routeTableName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

