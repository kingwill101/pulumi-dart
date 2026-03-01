// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_managed_disk_sas_token_managed_disk_sas_token_args_doc}
/// The set of arguments for ManagedDiskSasToken.
/// {@endtemplate}
/// {@macro pulumi_compute_managed_disk_sas_token_managed_disk_sas_token_args_doc}
class ManagedDiskSasTokenArgs {
  /// The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created.
  ///
  /// Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/compute/disks/grant-access)
  /// for additional details on the fields above.
  final pulumi.Input<String> accessLevel;
  /// The duration for which the export should be allowed. Should be between 30 & 4294967295 seconds. Changing this forces a new resource to be created.
  final pulumi.Input<int> durationInSeconds;
  /// The ID of an existing Managed Disk which should be exported. Changing this forces a new resource to be created.
  final pulumi.Input<String> managedDiskId;

  /// Creates a new [ManagedDiskSasTokenArgs].
  /// [accessLevel] The level of access required on the disk. Supported are Read, Write. Changing this forces a new resource to be created.
  /// [durationInSeconds] The duration for which the export should be allowed. Should be between 30 & 4294967295 seconds. Changing this forces a new resource to be created.
  /// [managedDiskId] The ID of an existing Managed Disk which should be exported. Changing this forces a new resource to be created.
  ManagedDiskSasTokenArgs({
    required String accessLevel,
    required int durationInSeconds,
    required String managedDiskId,
  }) :
      accessLevel = pulumi.Input.asInput<String>(accessLevel),
      durationInSeconds = pulumi.Input.asInput<int>(durationInSeconds),
      managedDiskId = pulumi.Input.asInput<String>(managedDiskId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevel': accessLevel,
      'durationInSeconds': durationInSeconds,
      'managedDiskId': managedDiskId,
    };
  }

  factory ManagedDiskSasTokenArgs.fromMap(Map<String, dynamic> map) {
    return ManagedDiskSasTokenArgs(
      accessLevel: map['accessLevel'] as String,
      durationInSeconds: map['durationInSeconds'] as int,
      managedDiskId: map['managedDiskId'] as String,
    );
  }
}

