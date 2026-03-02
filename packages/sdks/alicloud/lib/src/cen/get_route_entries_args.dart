// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_route_entries_get_route_entries_args_doc}
/// Arguments for getRouteEntries.
/// {@endtemplate}
/// {@macro pulumi_cen_get_route_entries_get_route_entries_args_doc}
class GetRouteEntriesArgs {
  /// The destination CIDR block of the route entry to query.
  final pulumi.Input<String>? cidrBlock;
  /// ID of the CEN instance.
  final pulumi.Input<String> instanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// ID of the route table of the VPC or VBR.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [GetRouteEntriesArgs].
  /// [cidrBlock] The destination CIDR block of the route entry to query.
  /// [instanceId] ID of the CEN instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [routeTableId] ID of the route table of the VPC or VBR.
  GetRouteEntriesArgs({
    this.cidrBlock,
    required this.instanceId,
    this.outputFile,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'routeTableId': routeTableId,
    };
  }

  factory GetRouteEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteEntriesArgs(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock']! as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
    );
  }
}

