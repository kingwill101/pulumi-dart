// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_managed_disk_get_managed_disk_args_doc}
/// Arguments for getManagedDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_get_managed_disk_get_managed_disk_args_doc}
class GetManagedDiskArgs {
  /// Specifies the name of the Managed Disk.
  final pulumi.Input<String> name;
  /// Specifies the name of the Resource Group where this Managed Disk exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedDiskArgs].
  /// [name] Specifies the name of the Managed Disk.
  /// [resourceGroupName] Specifies the name of the Resource Group where this Managed Disk exists.
  GetManagedDiskArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedDiskArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

