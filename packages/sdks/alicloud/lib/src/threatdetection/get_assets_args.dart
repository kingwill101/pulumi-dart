// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_assets_get_assets_args_doc}
/// Arguments for getAssets.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_assets_get_assets_args_doc}
class GetAssetsArgs {
  /// Set the conditions for searching assets. This parameter is in JSON format. Note the case when you enter the parameter. **NOTE:** You can search for assets by using conditions such as the instance ID, instance name, VPC ID, region, and public IP address of the asset.
  final pulumi.Input<String>? criteria;
  /// A list of Asset IDs.
  final pulumi.Input<List<String>>? ids;
  /// Set asset importance. Value:
  /// - **2**: Significant assets
  /// - **1**: General assets
  /// - **0**: Test asset
  final pulumi.Input<int>? importance;
  /// Set the logical relationship between multiple search conditions. The default value is **OR**. Valid values:
  /// - **OR**: indicates that the relationship between multiple search conditions is **OR**.
  /// - **AND**: indicates that the relationship between multiple search conditions is **AND**.
  final pulumi.Input<String>? logicalExp;
  /// The type of asset to query. Value:
  /// - **ecs**: server.
  /// - **cloud_product**: Cloud product.
  final pulumi.Input<String>? machineTypes;
  /// Specifies whether to internationalize the name of the default group. Default value: false
  final pulumi.Input<bool>? noGroupTrace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Creates a new [GetAssetsArgs].
  /// [criteria] Set the conditions for searching assets. This parameter is in JSON format. Note the case when you enter the parameter. **NOTE:** You can search for assets by using conditions such as the instance ID, instance name, VPC ID, region, and public IP address of the asset.
  /// [ids] A list of Asset IDs.
  /// [importance] Set asset importance. Value:
  /// [logicalExp] Set the logical relationship between multiple search conditions. The default value is **OR**. Valid values:
  /// [machineTypes] The type of asset to query. Value:
  /// [noGroupTrace] Specifies whether to internationalize the name of the default group. Default value: false
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  GetAssetsArgs({
    this.criteria,
    this.ids,
    this.importance,
    this.logicalExp,
    this.machineTypes,
    this.noGroupTrace,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'criteria': ?criteria,
      'ids': ?ids,
      'importance': ?importance,
      'logicalExp': ?logicalExp,
      'machineTypes': ?machineTypes,
      'noGroupTrace': ?noGroupTrace,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
    };
  }

  factory GetAssetsArgs.fromMap(Map<String, dynamic> map) {
    return GetAssetsArgs(
      criteria: map['criteria'] == null ? null : (map['criteria']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      importance: map['importance'] == null ? null : (map['importance']! as int).input(),
      logicalExp: map['logicalExp'] == null ? null : (map['logicalExp']! as String).input(),
      machineTypes: map['machineTypes'] == null ? null : (map['machineTypes']! as String).input(),
      noGroupTrace: map['noGroupTrace'] == null ? null : (map['noGroupTrace']! as bool).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
    );
  }
}

