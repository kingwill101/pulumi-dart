// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_rds_db_snapshot_attributes_result_args_doc}
/// Arguments for getRdsDbSnapshotAttributesResult.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_rds_db_snapshot_attributes_result_args_doc}
class GetRdsDbSnapshotAttributesResultArgs {
  /// Name of RdsDBSnapshotAttributesResult
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRdsDbSnapshotAttributesResultArgs].
  /// [name] Name of RdsDBSnapshotAttributesResult
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRdsDbSnapshotAttributesResultArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRdsDbSnapshotAttributesResultArgs.fromMap(Map<String, dynamic> map) {
    return GetRdsDbSnapshotAttributesResultArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

