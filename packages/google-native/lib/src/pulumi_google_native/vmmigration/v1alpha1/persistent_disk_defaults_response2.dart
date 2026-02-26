// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_response3.dart';
import 'vm_attachment_details_response2.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaultsResponse2 {
  /// A map of labels to associate with the Persistent Disk.
  final Map<String, String> additionalLabels;

  /// Optional. The name of the Persistent Disk to create.
  final String diskName;

  /// The disk type to use.
  final String diskType;

  /// Optional. The encryption to apply to the disk.
  final EncryptionResponse3 encryption;

  /// The ordinal number of the source VM disk.
  final int sourceDiskNumber;

  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final VmAttachmentDetailsResponse2 vmAttachmentDetails;

  PersistentDiskDefaultsResponse2({
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

  factory PersistentDiskDefaultsResponse2.fromMap(Map<String, dynamic> map) {
    return PersistentDiskDefaultsResponse2(
      additionalLabels: (map['additionalLabels'] as Map).cast<String, String>(),
      diskName: map['diskName'] as String,
      diskType: map['diskType'] as String,
      encryption: EncryptionResponse3.fromMap(
          (map['encryption'] as Map).cast<String, dynamic>()),
      sourceDiskNumber: map['sourceDiskNumber'] as int,
      vmAttachmentDetails: VmAttachmentDetailsResponse2.fromMap(
          (map['vmAttachmentDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
