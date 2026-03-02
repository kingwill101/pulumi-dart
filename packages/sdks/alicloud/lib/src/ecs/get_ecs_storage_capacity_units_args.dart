// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_storage_capacity_units_get_ecs_storage_capacity_units_args_doc}
/// Arguments for getEcsStorageCapacityUnits.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_storage_capacity_units_get_ecs_storage_capacity_units_args_doc}
class GetEcsStorageCapacityUnitsArgs {
  /// A list of Storage Capacity Unit IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Storage Capacity Unit name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of Storage Capacity Unit. Valid values: `Active`, `Creating`, `Expired`, `Pending`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetEcsStorageCapacityUnitsArgs].
  /// [ids] A list of Storage Capacity Unit IDs.
  /// [nameRegex] A regex string to filter results by Storage Capacity Unit name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of Storage Capacity Unit. Valid values: `Active`, `Creating`, `Expired`, `Pending`.
  GetEcsStorageCapacityUnitsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetEcsStorageCapacityUnitsArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsStorageCapacityUnitsArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

