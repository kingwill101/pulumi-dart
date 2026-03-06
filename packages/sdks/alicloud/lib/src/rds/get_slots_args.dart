// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_slots_get_slots_args_doc}
/// Arguments for getSlots.
/// {@endtemplate}
/// {@macro pulumi_rds_get_slots_get_slots_args_doc}
class GetSlotsArgs {
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [GetSlotsArgs].
  /// [dbInstanceId] The db instance id.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The resource group id.
  const GetSlotsArgs({
    required this.dbInstanceId,
    this.outputFile,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetSlotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSlotsArgs(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

