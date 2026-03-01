// ignore_for_file: unused_element, unnecessary_cast


/// Temporary disk payload
class TemporaryDisk {
  /// Mount path of the temporary disk
  final String? mountPath;
  /// Size of the temporary disk in GB
  final int? sizeInGB;

  /// Creates a new [TemporaryDisk].
  /// [mountPath] Mount path of the temporary disk
  /// [sizeInGB] Size of the temporary disk in GB
  TemporaryDisk({
    this.mountPath,
    this.sizeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'sizeInGB': ?sizeInGB,
    };
  }

  factory TemporaryDisk.fromMap(Map<String, dynamic> map) {
    return TemporaryDisk(
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      sizeInGB: map['sizeInGB'] == null ? null : map['sizeInGB'] as int,
    );
  }
}

