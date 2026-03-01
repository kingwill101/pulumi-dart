// ignore_for_file: unused_element, unnecessary_cast


/// Contains all the secrets of a Disk.
class DiskSecretResponse {
  /// Bit Locker key of the disk which can be used to unlock the disk to copy data.
  final String bitLockerKey;
  /// Serial number of the assigned disk.
  final String diskSerialNumber;

  /// Creates a new [DiskSecretResponse].
  /// [bitLockerKey] Bit Locker key of the disk which can be used to unlock the disk to copy data.
  /// [diskSerialNumber] Serial number of the assigned disk.
  DiskSecretResponse({
    required this.bitLockerKey,
    required this.diskSerialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitLockerKey': bitLockerKey,
      'diskSerialNumber': diskSerialNumber,
    };
  }

  factory DiskSecretResponse.fromMap(Map<String, dynamic> map) {
    return DiskSecretResponse(
      bitLockerKey: map['bitLockerKey'] as String,
      diskSerialNumber: map['diskSerialNumber'] as String,
    );
  }
}

