// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_region_route_entries_get_region_route_entries_args_doc}
/// Arguments for getRegionRouteEntries.
/// {@endtemplate}
/// {@macro pulumi_cen_get_region_route_entries_get_region_route_entries_args_doc}
class GetRegionRouteEntriesArgs {
  /// ID of the CEN instance.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? outputFile;

  /// ID of the region.
  final pulumi.Input<String> regionId;

  /// Creates a new [GetRegionRouteEntriesArgs].
  /// [instanceId] ID of the CEN instance.
  /// [outputFile] Optional.
  /// [regionId] ID of the region.
  GetRegionRouteEntriesArgs({
    required this.instanceId,
    this.outputFile,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'regionId': regionId,
    };
  }

  factory GetRegionRouteEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionRouteEntriesArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}
