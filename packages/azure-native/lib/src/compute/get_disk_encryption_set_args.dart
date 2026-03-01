// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_disk_encryption_set_args_doc}
/// Arguments for getDiskEncryptionSet.
/// {@endtemplate}
/// {@macro pulumi_compute_get_disk_encryption_set_args_doc}
class GetDiskEncryptionSetArgs {
  /// The name of the disk encryption set that is being created. The name can't be changed after the disk encryption set is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  final pulumi.Input<String> diskEncryptionSetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDiskEncryptionSetArgs].
  /// [diskEncryptionSetName] The name of the disk encryption set that is being created. The name can't be changed after the disk encryption set is created. Supported characters for the name are a-z, A-Z, 0-9, _ and -. The maximum name length is 80 characters.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDiskEncryptionSetArgs({
    required String diskEncryptionSetName,
    required String resourceGroupName,
  }) :
      diskEncryptionSetName = pulumi.Input.asInput<String>(diskEncryptionSetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetName': diskEncryptionSetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDiskEncryptionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetDiskEncryptionSetArgs(
      diskEncryptionSetName: map['diskEncryptionSetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

