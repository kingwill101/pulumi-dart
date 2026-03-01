// ignore_for_file: unused_element, unnecessary_cast


/// Object level immutability properties of the container.
class ImmutableStorageWithVersioningResponse {
  /// This is an immutable property, when set to true it enables object level immutability at the container level.
  final bool? enabled;
  /// This property denotes the container level immutability to object level immutability migration state.
  final String migrationState;
  /// Returns the date and time the object level immutability was enabled.
  final String timeStamp;

  /// Creates a new [ImmutableStorageWithVersioningResponse].
  /// [enabled] This is an immutable property, when set to true it enables object level immutability at the container level.
  /// [migrationState] This property denotes the container level immutability to object level immutability migration state.
  /// [timeStamp] Returns the date and time the object level immutability was enabled.
  ImmutableStorageWithVersioningResponse({
    this.enabled,
    required this.migrationState,
    required this.timeStamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'migrationState': migrationState,
      'timeStamp': timeStamp,
    };
  }

  factory ImmutableStorageWithVersioningResponse.fromMap(Map<String, dynamic> map) {
    return ImmutableStorageWithVersioningResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      migrationState: map['migrationState'] as String,
      timeStamp: map['timeStamp'] as String,
    );
  }
}

