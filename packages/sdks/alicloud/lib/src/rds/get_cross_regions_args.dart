// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_cross_regions_get_cross_regions_args_doc}
/// Arguments for getCrossRegions.
/// {@endtemplate}
/// {@macro pulumi_rds_get_cross_regions_get_cross_regions_args_doc}
class GetCrossRegionsArgs {
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCrossRegionsArgs].
  /// [outputFile] Optional.
  GetCrossRegionsArgs({
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetCrossRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetCrossRegionsArgs(
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

