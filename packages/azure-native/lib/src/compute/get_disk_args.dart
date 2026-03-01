// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_disk_args_doc}
/// Arguments for getDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_get_disk_args_doc}
class GetDiskArgs {
  /// The name of the managed disk that is being created. The name can't be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  final pulumi.Input<String> diskName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiskArgs].
  /// [diskName] The name of the managed disk that is being created. The name can't be changed after the disk is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiskArgs({
    required String diskName,
    required String resourceGroupName,
  }) :
      diskName = pulumi.Input.asInput<String>(diskName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskName': diskName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskArgs(
      diskName: map['diskName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

