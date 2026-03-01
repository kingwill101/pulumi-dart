// ignore_for_file: unused_element, unnecessary_cast


/// InMageRcm disk input.
class InMageRcmDiskInput {
  /// The DiskEncryptionSet ARM Id.
  final String? diskEncryptionSetId;
  /// The disk Id.
  final String diskId;
  /// The disk type.
  final String diskType;
  /// The log storage account ARM Id.
  final String logStorageAccountId;
  /// The logical sector size (in bytes), 512 by default.
  final int? sectorSizeInBytes;

  /// Creates a new [InMageRcmDiskInput].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskId] The disk Id.
  /// [diskType] The disk type.
  /// [logStorageAccountId] The log storage account ARM Id.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  InMageRcmDiskInput({
    this.diskEncryptionSetId,
    required this.diskId,
    required this.diskType,
    required this.logStorageAccountId,
    this.sectorSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': diskId,
      'diskType': diskType,
      'logStorageAccountId': logStorageAccountId,
      'sectorSizeInBytes': ?sectorSizeInBytes,
    };
  }

  factory InMageRcmDiskInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmDiskInput(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskId: map['diskId'] as String,
      diskType: map['diskType'] as String,
      logStorageAccountId: map['logStorageAccountId'] as String,
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : map['sectorSizeInBytes'] as int,
    );
  }
}

