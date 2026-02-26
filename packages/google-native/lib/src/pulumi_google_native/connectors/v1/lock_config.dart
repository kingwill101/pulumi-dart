// ignore_for_file: unused_element, unnecessary_cast

/// Determines whether or no a connection is locked. If locked, a reason must be specified.
class LockConfig {
  /// Indicates whether or not the connection is locked.
  final bool? locked;

  /// Describes why a connection is locked.
  final String? reason;

  LockConfig({
    this.locked,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lockedValue = locked;
    if (lockedValue != null) {
      map['locked'] = lockedValue;
    }
    final reasonValue = reason;
    if (reasonValue != null) {
      map['reason'] = reasonValue;
    }
    return map;
  }

  factory LockConfig.fromMap(Map<String, dynamic> map) {
    return LockConfig(
      locked: map['locked'] == null ? null : map['locked'] as bool,
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}
