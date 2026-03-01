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
    List<String>? ids,
    String? outputFile,
    String? parentId,
    String? resourceType,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      parentId = pulumi.Input.asOptionalInput<String>(parentId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      parentId: map['parentId'] == null ? null : map['parentId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

