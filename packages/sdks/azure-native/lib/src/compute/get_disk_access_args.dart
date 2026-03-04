// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_disk_access_args_doc}
/// Arguments for getDiskAccess.
/// {@endtemplate}
/// {@macro pulumi_compute_get_disk_access_args_doc}
class GetDiskAccessArgs {
  /// The name of the disk access resource that is being created. The name can't be changed after the disk encryption set is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  final pulumi.Input<String> diskAccessName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiskAccessArgs].
  /// [diskAccessName] The name of the disk access resource that is being created. The name can't be changed after the disk encryption set is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiskAccessArgs({
    required this.diskAccessName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskAccessName': diskAccessName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiskAccessArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskAccessArgs(
      diskAccessName: pulumi.Input.fromValue(map['diskAccessName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
