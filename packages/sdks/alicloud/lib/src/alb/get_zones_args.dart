// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_alb_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetZonesArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetZonesArgs({
    pulumi.Output<String>? outputFile,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

