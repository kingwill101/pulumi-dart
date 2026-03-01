// ignore_for_file: unused_element, unnecessary_cast


class GetDisksOperationLock {
  final String? lockReason;

  /// Creates a new [GetDisksOperationLock].
  /// [lockReason] Optional.
  GetDisksOperationLock({
    this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': ?lockReason,
    };
  }

  factory GetDisksOperationLock.fromMap(Map<String, dynamic> map) {
    return GetDisksOperationLock(
      lockReason: map['lockReason'] == null ? null : map['lockReason'] as String,
    );
  }
}

