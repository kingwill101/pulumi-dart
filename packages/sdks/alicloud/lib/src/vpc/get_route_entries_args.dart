// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_route_entries_get_route_entries_args_doc}
/// Arguments for getRouteEntries.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_route_entries_get_route_entries_args_doc}
class GetRouteEntriesArgs {
  /// The destination CIDR block of the route entry.
  final pulumi.Input<String>? cidrBlock;
  /// The instance ID of the next hop.
  final pulumi.Input<String>? instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the router table to which the route entry belongs.
  final pulumi.Input<String> routeTableId;
  /// The type of the route entry.
  final pulumi.Input<String>? type;

  /// Creates a new [GetRouteEntriesArgs].
  /// [cidrBlock] The destination CIDR block of the route entry.
  /// [instanceId] The instance ID of the next hop.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [routeTableId] The ID of the router table to which the route entry belongs.
  /// [type] The type of the route entry.
  GetRouteEntriesArgs({
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> routeTableId,
    pulumi.Output<String>? type,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      routeTableId = pulumi.Input.asInput<String>(routeTableId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'instanceId': ?instanceId,
      'outputFile': ?outputFile,
      'routeTableId': routeTableId,
      'type': ?type,
    };
  }

  factory GetRouteEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteEntriesArgs(
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      routeTableId: pulumi.Output.create<String>(map['routeTableId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

