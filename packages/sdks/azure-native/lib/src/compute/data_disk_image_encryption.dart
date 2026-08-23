// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains encryption settings for a data disk image.
class DataDiskImageEncryption {
  /// A relative URI containing the resource ID of the disk encryption set.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  final pulumi.Input<int> lun;

  /// Creates a new [DataDiskImageEncryption].
  /// [diskEncryptionSetId] A relative URI containing the resource ID of the disk encryption set.
  /// [lun] This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine.
  const DataDiskImageEncryption({
    this.diskEncryptionSetId,
    required this.lun,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'lun': lun,
    };
  }

  factory DataDiskImageEncryption.fromMap(Map<String, dynamic> map) {
    return DataDiskImageEncryption(
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lun: pulumi.Input.fromValue(map['lun'] as int),
    );
  }
}
