// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInferencePoolStatus.
class GetInferencePoolStatusResult {
  /// Gets or sets the actual number of instances in the pool.
  final int? actualCapacity;
  /// Gets or sets the actual number of groups in the pool.
  final int? groupCount;
  /// Gets or sets the requested number of instances for the pool.
  final int? requestedCapacity;
  /// Gets or sets the number of instances in the pool reserved by the system.
  final int? reservedCapacity;

  /// Creates a new [GetInferencePoolStatusResult].
  /// [actualCapacity] Gets or sets the actual number of instances in the pool.
  /// [groupCount] Gets or sets the actual number of groups in the pool.
  /// [requestedCapacity] Gets or sets the requested number of instances for the pool.
  /// [reservedCapacity] Gets or sets the number of instances in the pool reserved by the system.
  const GetInferencePoolStatusResult({
    this.actualCapacity,
    this.groupCount,
    this.requestedCapacity,
    this.reservedCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualCapacity': ?actualCapacity,
      'groupCount': ?groupCount,
      'requestedCapacity': ?requestedCapacity,
      'reservedCapacity': ?reservedCapacity,
    };
  }

  factory GetInferencePoolStatusResult.fromMap(Map<String, dynamic> map) {
    return GetInferencePoolStatusResult(
      actualCapacity: (() { final guardedValue = map['actualCapacity']; if (guardedValue == null) return null; return guardedValue as int; })(),
      groupCount: (() { final guardedValue = map['groupCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      requestedCapacity: (() { final guardedValue = map['requestedCapacity']; if (guardedValue == null) return null; return guardedValue as int; })(),
      reservedCapacity: (() { final guardedValue = map['reservedCapacity']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}
