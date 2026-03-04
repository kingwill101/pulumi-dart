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
    this.cidrBlock,
    this.instanceId,
    this.outputFile,
    required this.routeTableId,
    this.type,
  });

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
      cidrBlock: (() {
        final guardedValue = map['cidrBlock'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
