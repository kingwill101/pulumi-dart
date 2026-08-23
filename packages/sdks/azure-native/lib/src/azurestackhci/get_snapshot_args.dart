// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_snapshot_args_doc}
class GetSnapshotArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the snapshot
  final pulumi.Input<String> snapshotName;

  /// Creates a new [GetSnapshotArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] Name of the snapshot
  const GetSnapshotArgs({
    required this.resourceGroupName,
    required this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'snapshotName': snapshotName,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      snapshotName: pulumi.Input.fromValue(map['snapshotName'] as String),
    );
  }
}
