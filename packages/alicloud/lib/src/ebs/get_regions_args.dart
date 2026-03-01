// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_ebs_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A list of Disk Replica Group IDs.
  final pulumi.Input<String>? regionId;

  /// Creates a new [GetRegionsArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [regionId] A list of Disk Replica Group IDs.
  GetRegionsArgs({
    String? outputFile,
    String? regionId,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      regionId = pulumi.Input.asOptionalInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'regionId': ?regionId,
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      regionId: map['regionId'] == null ? null : map['regionId'] as String,
    );
  }
}

