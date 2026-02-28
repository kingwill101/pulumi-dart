// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_response_vmmigration_v1alpha1.dart';
import 'vm_attachment_details_response_vmmigration_v1alpha1.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaultsResponseVmmigrationV1alpha1 {
  /// A map of labels to associate with the Persistent Disk.
  final Map<String, String> additionalLabels;

  /// Optional. The name of the Persistent Disk to create.
  final String diskName;

  /// The disk type to use.
  final String diskType;

  /// Optional. The encryption to apply to the disk.
  final EncryptionResponseVmmigrationV1alpha1 encryption;

  /// The ordinal number of the source VM disk.
  final int sourceDiskNumber;

  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final VmAttachmentDetailsResponseVmmigrationV1alpha1 vmAttachmentDetails;

  /// Creates a new [PersistentDiskDefaultsResponseVmmigrationV1alpha1].
  /// [additionalLabels] A map of labels to associate with the Persistent Disk.
  /// [diskName] Optional. The name of the Persistent Disk to create.
  /// [diskType] The disk type to use.
  /// [encryption] Optional. The encryption to apply to the disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  /// [vmAttachmentDetails] Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  PersistentDiskDefaultsResponseVmmigrationV1alpha1({
    required this.additionalLabels,
    required this.diskName,
    required this.diskType,
    required this.encryption,
    required this.sourceDiskNumber,
    required this.vmAttachmentDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalLabels'] = additionalLabels;
    map['diskName'] = diskName;
    map['diskType'] = diskType;
    map['encryption'] = encryption.toMap();
    map['sourceDiskNumber'] = sourceDiskNumber;
    map['vmAttachmentDetails'] = vmAttachmentDetails.toMap();
    return map;
  }

  factory PersistentDiskDefaultsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return PersistentDiskDefaultsResponseVmmigrationV1alpha1(
      additionalLabels: (map['additionalLabels'] as Map).cast<String, String>(),
      diskName: map['diskName'] as String,
      diskType: map['diskType'] as String,
      encryption: EncryptionResponseVmmigrationV1alpha1.fromMap(
          (map['encryption'] as Map).cast<String, dynamic>()),
      sourceDiskNumber: map['sourceDiskNumber'] as int,
      vmAttachmentDetails:
          VmAttachmentDetailsResponseVmmigrationV1alpha1.fromMap(
              (map['vmAttachmentDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
