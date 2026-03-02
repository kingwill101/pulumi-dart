// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pvtz_get_resolver_zones_get_resolver_zones_args_doc}
/// Arguments for getResolverZones.
/// {@endtemplate}
/// {@macro pulumi_pvtz_get_resolver_zones_get_resolver_zones_args_doc}
class GetResolverZonesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the Zone. Valid values: `NORMAL`, `SOLD_OUT`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetResolverZonesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the Zone. Valid values: `NORMAL`, `SOLD_OUT`.
  GetResolverZonesArgs({
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetResolverZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverZonesArgs(
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

