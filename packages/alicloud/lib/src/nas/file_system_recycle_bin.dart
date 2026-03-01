// ignore_for_file: unused_element, unnecessary_cast


class FileSystemRecycleBin {
  /// Recycle Bin open time
  final String? enableTime;
  /// Retention time of files in the Recycle Bin. Unit: days.
  final int? reservedDays;
  /// Amount of low-frequency data stored in the recycle bin. Unit: Byte.
  final int? secondarySize;
  /// The amount of files stored in the Recycle Bin. Unit: Byte.
  final int? size;
  /// Recycle Bin Status
  final String? status;

  /// Creates a new [FileSystemRecycleBin].
  /// [enableTime] Recycle Bin open time
  /// [reservedDays] Retention time of files in the Recycle Bin. Unit: days.
  /// [secondarySize] Amount of low-frequency data stored in the recycle bin. Unit: Byte.
  /// [size] The amount of files stored in the Recycle Bin. Unit: Byte.
  /// [status] Recycle Bin Status
  FileSystemRecycleBin({
    this.enableTime,
    this.reservedDays,
    this.secondarySize,
    this.size,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableTime': ?enableTime,
      'reservedDays': ?reservedDays,
      'secondarySize': ?secondarySize,
      'size': ?size,
      'status': ?status,
    };
  }

  factory FileSystemRecycleBin.fromMap(Map<String, dynamic> map) {
    return FileSystemRecycleBin(
      enableTime: map['enableTime'] == null ? null : map['enableTime'] as String,
      reservedDays: map['reservedDays'] == null ? null : map['reservedDays'] as int,
      secondarySize: map['secondarySize'] == null ? null : map['secondarySize'] as int,
      size: map['size'] == null ? null : map['size'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

