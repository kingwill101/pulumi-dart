// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_response.dart';
import 'vm_attachment_details_response.dart';

/// Details for creation of a Persistent Disk.
class PersistentDiskDefaultsResponse {
  /// A map of labels to associate with the Persistent Disk.
  final Map<String, String> additionalLabels;
  /// Optional. The name of the Persistent Disk to create.
  final String diskName;
  /// The disk type to use.
  final String diskType;
  /// Optional. The encryption to apply to the disk.
  final EncryptionResponse encryption;
  /// The ordinal number of the source VM disk.
  final int sourceDiskNumber;
  /// Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  final VmAttachmentDetailsResponse vmAttachmentDetails;

  /// Creates a new [PersistentDiskDefaultsResponse].
  /// [additionalLabels] A map of labels to associate with the Persistent Disk.
  /// [diskName] Optional. The name of the Persistent Disk to create.
  /// [diskType] The disk type to use.
  /// [encryption] Optional. The encryption to apply to the disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  /// [vmAttachmentDetails] Optional. Details for attachment of the disk to a VM. Used when the disk is set to be attacked to a target VM.
  PersistentDiskDefaultsResponse({
    required this.additionalLabels,
    required this.diskName,
    required this.diskType,
    required this.encryption,
    required this.sourceDiskNumber,
    required this.vmAttachmentDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalLabels': additionalLabels,
      'diskName': diskName,
      'diskType': diskType,
      'encryption': encryption.toMap(),
      'sourceDiskNumber': sourceDiskNumber,
      'vmAttachmentDetails': vmAttachmentDetails.toMap(),
    };
  }

  factory PersistentDiskDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return PersistentDiskDefaultsResponse(
      additionalLabels: (map['additionalLabels'] as Map).cast<String, String>(),
      diskName: map['diskName'] as String,
      diskType: map['diskType'] as String,
      encryption: EncryptionResponse.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      sourceDiskNumber: map['sourceDiskNumber'] as int,
      vmAttachmentDetails: VmAttachmentDetailsResponse.fromMap((map['vmAttachmentDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

