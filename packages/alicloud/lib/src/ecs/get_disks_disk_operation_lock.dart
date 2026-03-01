// ignore_for_file: unused_element, unnecessary_cast


class GetDisksDiskOperationLock {
  final String lockReason;

  /// Creates a new [GetDisksDiskOperationLock].
  /// [lockReason] Required.
  GetDisksDiskOperationLock({
    required this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': lockReason,
    };
  }

  factory GetDisksDiskOperationLock.fromMap(Map<String, dynamic> map) {
    return GetDisksDiskOperationLock(
      lockReason: map['lockReason'] as String,
    );
  }
}

