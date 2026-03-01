// ignore_for_file: unused_element, unnecessary_cast


class ReservedInstanceOperationLock {
  /// The reason why the reserved instance was locked.
  final String? lockReason;

  /// Creates a new [ReservedInstanceOperationLock].
  /// [lockReason] The reason why the reserved instance was locked.
  ReservedInstanceOperationLock({
    this.lockReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lockReason': ?lockReason,
    };
  }

  factory ReservedInstanceOperationLock.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceOperationLock(
      lockReason: map['lockReason'] == null ? null : map['lockReason'] as String,
    );
  }
}

