// ignore_for_file: unused_element, unnecessary_cast


/// Persistent disk payload
class PersistentDisk {
  /// Mount path of the persistent disk
  final String? mountPath;
  /// Size of the persistent disk in GB
  final int? sizeInGB;

  /// Creates a new [PersistentDisk].
  /// [mountPath] Mount path of the persistent disk
  /// [sizeInGB] Size of the persistent disk in GB
  PersistentDisk({
    this.mountPath,
    this.sizeInGB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPath': ?mountPath,
      'sizeInGB': ?sizeInGB,
    };
  }

  factory PersistentDisk.fromMap(Map<String, dynamic> map) {
    return PersistentDisk(
      mountPath: map['mountPath'] == null ? null : map['mountPath'] as String,
      sizeInGB: map['sizeInGB'] == null ? null : map['sizeInGB'] as int,
    );
  }
}

