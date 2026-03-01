// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clickhouse_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_clickhouse_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// Set to true to match only the region configured in the provider. Default value: `true`.
  final pulumi.Input<bool>? current;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// You can use specified region_id to find the region and available zones information that supports ClickHouse.
  final pulumi.Input<String>? regionId;

  /// Creates a new [GetRegionsArgs].
  /// [current] Set to true to match only the region configured in the provider. Default value: `true`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [regionId] You can use specified region_id to find the region and available zones information that supports ClickHouse.
  GetRegionsArgs({
    pulumi.Output<bool>? current,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? regionId,
  }) :
      current = pulumi.Input.asOptionalInput<bool>(current),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      regionId = pulumi.Input.asOptionalInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?current,
      'outputFile': ?outputFile,
      'regionId': ?regionId,
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      current: map['current'] == null ? null : pulumi.Output.create<bool>(map['current'] as bool),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

