// ignore_for_file: unused_element, unnecessary_cast


class GetImagesImageOsDisk {
  /// the URI in Azure storage of the blob used to create the image.
  final String blobUri;
  /// the caching mode for the Data Disk.
  final String caching;
  /// the ID of the Disk Encryption Set used to encrypt this image.
  final String diskEncryptionSetId;
  /// the ID of the Managed Disk used as the Data Disk Image.
  final String managedDiskId;
  /// the State of the OS used in the Image.
  final String osState;
  /// the type of Operating System used on the OS Disk.
  final String osType;
  /// the size of this Data Disk in GB.
  final int sizeGb;

  /// Creates a new [GetImagesImageOsDisk].
  /// [blobUri] the URI in Azure storage of the blob used to create the image.
  /// [caching] the caching mode for the Data Disk.
  /// [diskEncryptionSetId] the ID of the Disk Encryption Set used to encrypt this image.
  /// [managedDiskId] the ID of the Managed Disk used as the Data Disk Image.
  /// [osState] the State of the OS used in the Image.
  /// [osType] the type of Operating System used on the OS Disk.
  /// [sizeGb] the size of this Data Disk in GB.
  GetImagesImageOsDisk({
    required this.blobUri,
    required this.caching,
    required this.diskEncryptionSetId,
    required this.managedDiskId,
    required this.osState,
    required this.osType,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': blobUri,
      'caching': caching,
      'diskEncryptionSetId': diskEncryptionSetId,
      'managedDiskId': managedDiskId,
      'osState': osState,
      'osType': osType,
      'sizeGb': sizeGb,
    };
  }

  factory GetImagesImageOsDisk.fromMap(Map<String, dynamic> map) {
    return GetImagesImageOsDisk(
      blobUri: map['blobUri'] as String,
      caching: map['caching'] as String,
      diskEncryptionSetId: map['diskEncryptionSetId'] as String,
      managedDiskId: map['managedDiskId'] as String,
      osState: map['osState'] as String,
      osType: map['osType'] as String,
      sizeGb: map['sizeGb'] as int,
    );
  }
}

