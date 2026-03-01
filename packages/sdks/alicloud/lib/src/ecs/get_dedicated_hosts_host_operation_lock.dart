// ignore_for_file: unused_element, unnecessary_cast


class GetDedicatedHostsHostOperationLock {
  /// The reason why the dedicated host resource is locked.
  final String lockReason;

  /// Creates a new [GetDedicatedHostsHostOperationLock].
  /// [lockReason] The reason why the dedicated host resource is locked.
  GetDedicatedHostsHostOperationLock({
    required this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': lockReason,
    };
  }

  factory GetDedicatedHostsHostOperationLock.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostsHostOperationLock(
      lockReason: map['lockReason'] as String,
    );
  }
}

