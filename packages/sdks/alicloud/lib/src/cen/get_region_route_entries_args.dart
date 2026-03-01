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
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> regionId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'outputFile': ?outputFile,
      'regionId': regionId,
    };
  }

  factory GetRegionRouteEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionRouteEntriesArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      regionId: pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

