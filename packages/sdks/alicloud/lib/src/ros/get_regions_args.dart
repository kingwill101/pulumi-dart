// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ros_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_ros_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRegionsArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetRegionsArgs({
    pulumi.Output<String>? outputFile,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

