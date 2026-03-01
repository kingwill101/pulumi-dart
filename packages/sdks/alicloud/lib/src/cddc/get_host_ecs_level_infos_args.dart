// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cddc_get_host_ecs_level_infos_get_host_ecs_level_infos_args_doc}
/// Arguments for getHostEcsLevelInfos.
/// {@endtemplate}
/// {@macro pulumi_cddc_get_host_ecs_level_infos_get_host_ecs_level_infos_args_doc}
class GetHostEcsLevelInfosArgs {
  /// The database engine of the host. Valid values: `mysql`, `mssql`, `pgsql`, `redis`.
  final pulumi.Input<String> dbType;
  /// Host image. Valid values: `WindowsWithMssqlEntAlwaysonLicense`, `WindowsWithMssqlStdLicense`, `WindowsWithMssqlEntLicense`, `WindowsWithMssqlWebLicense`, `AliLinux`.
  final pulumi.Input<String>? imageCategory;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The storage type of the host ecs level info. Valid values: `local_ssd`, `cloud_essd`, `cloud_essd2`, `cloud_essd3`.
  final pulumi.Input<String> storageType;
  /// The ID of the zone in the region.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetHostEcsLevelInfosArgs].
  /// [dbType] The database engine of the host. Valid values: `mysql`, `mssql`, `pgsql`, `redis`.
  /// [imageCategory] Host image. Valid values: `WindowsWithMssqlEntAlwaysonLicense`, `WindowsWithMssqlStdLicense`, `WindowsWithMssqlEntLicense`, `WindowsWithMssqlWebLicense`, `AliLinux`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [storageType] The storage type of the host ecs level info. Valid values: `local_ssd`, `cloud_essd`, `cloud_essd2`, `cloud_essd3`.
  /// [zoneId] The ID of the zone in the region.
  GetHostEcsLevelInfosArgs({
    required pulumi.Output<String> dbType,
    pulumi.Output<String>? imageCategory,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> storageType,
    required pulumi.Output<String> zoneId,
  }) :
      dbType = pulumi.Input.asInput<String>(dbType),
      imageCategory = pulumi.Input.asOptionalInput<String>(imageCategory),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      storageType = pulumi.Input.asInput<String>(storageType),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbType': dbType,
      'imageCategory': ?imageCategory,
      'outputFile': ?outputFile,
      'storageType': storageType,
      'zoneId': zoneId,
    };
  }

  factory GetHostEcsLevelInfosArgs.fromMap(Map<String, dynamic> map) {
    return GetHostEcsLevelInfosArgs(
      dbType: pulumi.Output.create<String>(map['dbType'] as String),
      imageCategory: map['imageCategory'] == null ? null : pulumi.Output.create<String>(map['imageCategory'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      storageType: pulumi.Output.create<String>(map['storageType'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

