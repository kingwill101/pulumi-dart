// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fileshares_get_file_share_snapshot_args_doc}
/// Arguments for getFileShareSnapshot.
/// {@endtemplate}
/// {@macro pulumi_fileshares_get_file_share_snapshot_args_doc}
class GetFileShareSnapshotArgs {
  /// The name of the FileShareSnapshot
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the file share, as seen by the administrator through Azure Resource Manager.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetFileShareSnapshotArgs].
  /// [name] The name of the FileShareSnapshot
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The resource name of the file share, as seen by the administrator through Azure Resource Manager.
  GetFileShareSnapshotArgs({
    required this.name,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetFileShareSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetFileShareSnapshotArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

