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
  const GetRegionsArgs({
    this.current,
    this.outputFile,
    this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current': ?current,
      'outputFile': ?outputFile,
      'regionId': ?regionId,
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      current: (() { final guardedValue = map['current']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

