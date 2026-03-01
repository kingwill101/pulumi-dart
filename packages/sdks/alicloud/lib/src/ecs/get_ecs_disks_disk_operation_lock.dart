// ignore_for_file: unused_element, unnecessary_cast


class GetEcsDisksDiskOperationLock {
  /// The reason why the disk was locked.
  final String lockReason;

  /// Creates a new [GetEcsDisksDiskOperationLock].
  /// [lockReason] The reason why the disk was locked.
  GetEcsDisksDiskOperationLock({
    required this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': lockReason,
    };
  }

  factory GetEcsDisksDiskOperationLock.fromMap(Map<String, dynamic> map) {
    return GetEcsDisksDiskOperationLock(
      lockReason: map['lockReason'] as String,
    );
  }
}

