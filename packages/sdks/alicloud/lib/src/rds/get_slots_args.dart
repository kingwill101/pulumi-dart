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
  GetSlotsArgs({
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetSlotsArgs.fromMap(Map<String, dynamic> map) {
    return GetSlotsArgs(
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}

