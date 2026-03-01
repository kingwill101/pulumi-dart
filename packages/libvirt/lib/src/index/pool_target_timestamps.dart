// ignore_for_file: unused_element, unnecessary_cast


class PoolTargetTimestamps {
  /// Configures the last access time for the storage pool target.
  final String atime;
  /// Sets the last metadata change time for the storage pool target.
  final String ctime;
  /// Specifies the last modification time for the storage pool target.
  final String mtime;

  /// Creates a new [PoolTargetTimestamps].
  /// [atime] Configures the last access time for the storage pool target.
  /// [ctime] Sets the last metadata change time for the storage pool target.
  /// [mtime] Specifies the last modification time for the storage pool target.
  PoolTargetTimestamps({
    required this.atime,
    required this.ctime,
    required this.mtime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'atime': atime,
      'ctime': ctime,
      'mtime': mtime,
    };
  }

  factory PoolTargetTimestamps.fromMap(Map<String, dynamic> map) {
    return PoolTargetTimestamps(
      atime: map['atime'] as String,
      ctime: map['ctime'] as String,
      mtime: map['mtime'] as String,
    );
  }
}

