// ignore_for_file: unused_element, unnecessary_cast

import 'encryption.dart';
import 'persistent_disk_defaults_disk_type.dart';
import 'vm_attachment_details.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaults {
  /// A map of labels to associate with the Persistent Disk.
  final Map<String, String>? additionalLabels;

  /// Optional. The name of the Persistent Disk to create.
  final String? diskName;

  /// The disk type to use.
  final PersistentDiskDefaultsDiskType? diskType;

  /// Optional. The encryption to apply to the disk.
  final Encryption? encryption;

  /// The ordinal number of the source VM disk.
  final int sourceDiskNumber;

  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final VmAttachmentDetails? vmAttachmentDetails;

  /// Creates a new [PersistentDiskDefaults].
  /// [additionalLabels] A map of labels to associate with the Persistent Disk.
  /// [diskName] Optional. The name of the Persistent Disk to create.
  /// [diskType] The disk type to use.
  /// [encryption] Optional. The encryption to apply to the disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  /// [vmAttachmentDetails] Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  PersistentDiskDefaults({
    this.additionalLabels,
    this.diskName,
    this.diskType,
    this.encryption,
    required this.sourceDiskNumber,
    this.vmAttachmentDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLabels': ?additionalLabels,
      'diskName': ?diskName,
      'diskType': ?diskType == null ? null : diskType!.value,
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'sourceDiskNumber': sourceDiskNumber,
      'vmAttachmentDetails': ?vmAttachmentDetails == null
          ? null
          : vmAttachmentDetails!.toMap(),
    };
  }

  factory PersistentDiskDefaults.fromMap(Map<String, dynamic> map) {
    return PersistentDiskDefaults(
      additionalLabels: map['additionalLabels'] == null
          ? null
          : (map['additionalLabels'] as Map).cast<String, String>(),
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskType: map['diskType'] == null
          ? null
          : PersistentDiskDefaultsDiskType.fromValue(map['diskType'] as String),
      encryption: map['encryption'] == null
          ? null
          : Encryption.fromMap(
              (map['encryption'] as Map).cast<String, dynamic>(),
            ),
      sourceDiskNumber: map['sourceDiskNumber'] as int,
      vmAttachmentDetails: map['vmAttachmentDetails'] == null
          ? null
          : VmAttachmentDetails.fromMap(
              (map['vmAttachmentDetails'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
