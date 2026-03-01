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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

