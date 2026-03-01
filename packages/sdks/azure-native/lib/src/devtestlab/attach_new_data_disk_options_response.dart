// ignore_for_file: unused_element, unnecessary_cast


/// Properties to attach new disk to the Virtual Machine.
class AttachNewDataDiskOptionsResponse {
  /// The name of the disk to be attached.
  final String? diskName;
  /// Size of the disk to be attached in Gibibytes.
  final int? diskSizeGiB;
  /// The storage type for the disk (i.e. Standard, Premium).
  final String? diskType;

  /// Creates a new [AttachNewDataDiskOptionsResponse].
  /// [diskName] The name of the disk to be attached.
  /// [diskSizeGiB] Size of the disk to be attached in Gibibytes.
  /// [diskType] The storage type for the disk (i.e. Standard, Premium).
  AttachNewDataDiskOptionsResponse({
    this.diskName,
    this.diskSizeGiB,
    this.diskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskName': ?diskName,
      'diskSizeGiB': ?diskSizeGiB,
      'diskType': ?diskType,
    };
  }

  factory AttachNewDataDiskOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AttachNewDataDiskOptionsResponse(
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskSizeGiB: map['diskSizeGiB'] == null ? null : map['diskSizeGiB'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
    );
  }
}

