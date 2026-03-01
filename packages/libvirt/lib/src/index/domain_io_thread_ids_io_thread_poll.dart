// ignore_for_file: unused_element, unnecessary_cast


class DomainIoThreadIDsIoThreadPoll {
  /// Sets the policy for growing the I/O thread's polling behavior.
  final double? grow;
  /// Configures the maximum polling rate for the I/O thread.
  final double? max;
  /// Sets the policy for shrinking the I/O thread's polling behavior.
  final double? shrink;

  /// Creates a new [DomainIoThreadIDsIoThreadPoll].
  /// [grow] Sets the policy for growing the I/O thread's polling behavior.
  /// [max] Configures the maximum polling rate for the I/O thread.
  /// [shrink] Sets the policy for shrinking the I/O thread's polling behavior.
  DomainIoThreadIDsIoThreadPoll({
    this.grow,
    this.max,
    this.shrink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grow': ?grow,
      'max': ?max,
      'shrink': ?shrink,
    };
  }

  factory DomainIoThreadIDsIoThreadPoll.fromMap(Map<String, dynamic> map) {
    return DomainIoThreadIDsIoThreadPoll(
      grow: map['grow'] == null ? null : map['grow'] as double,
      max: map['max'] == null ? null : map['max'] as double,
      shrink: map['shrink'] == null ? null : map['shrink'] as double,
    );
  }
}

