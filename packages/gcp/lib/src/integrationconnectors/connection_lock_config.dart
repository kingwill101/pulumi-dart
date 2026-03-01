// ignore_for_file: unused_element, unnecessary_cast

class ConnectionLockConfig {
  /// Indicates whether or not the connection is locked.
  final bool locked;

  /// Describes why a connection is locked.
  final String? reason;

  /// Creates a new [ConnectionLockConfig].
  /// [locked] Indicates whether or not the connection is locked.
  /// [reason] Describes why a connection is locked.
  ConnectionLockConfig({required this.locked, this.reason});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locked': locked, 'reason': ?reason};
  }

  factory ConnectionLockConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionLockConfig(
      locked: map['locked'] as bool,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}
