// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sddp_get_data_limits_get_data_limits_args_doc}
/// Arguments for getDataLimits.
/// {@endtemplate}
/// {@macro pulumi_sddp_get_data_limits_get_data_limits_args_doc}
class GetDataLimitsArgs {
  /// A list of Data Limit IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The parent asset ID of the data asset.
  final pulumi.Input<String>? parentId;
  /// The type of the service to which the data asset belongs. Valid values: `MaxCompute`, `OSS`, `RDS`.
  final pulumi.Input<String>? resourceType;

  /// Creates a new [GetDataLimitsArgs].
  /// [ids] A list of Data Limit IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [parentId] The parent asset ID of the data asset.
  /// [resourceType] The type of the service to which the data asset belongs. Valid values: `MaxCompute`, `OSS`, `RDS`.
  GetDataLimitsArgs({
    this.ids,
    this.outputFile,
    this.parentId,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'parentId': ?parentId,
      'resourceType': ?resourceType,
    };
  }

  factory GetDataLimitsArgs.fromMap(Map<String, dynamic> map) {
    return GetDataLimitsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      parentId: map['parentId'] == null ? null : (map['parentId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
    );
  }
}

