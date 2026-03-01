// ignore_for_file: unused_element, unnecessary_cast


/// Broker Diagnostic Self check properties
class SelfCheck {
  /// The self check interval.
  final int? intervalSeconds;
  /// The toggle to enable/disable self check.
  final String? mode;
  /// The timeout for self check.
  final int? timeoutSeconds;

  /// Creates a new [SelfCheck].
  /// [intervalSeconds] The self check interval.
  /// [mode] The toggle to enable/disable self check.
  /// [timeoutSeconds] The timeout for self check.
  SelfCheck({
    this.intervalSeconds,
    this.mode,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intervalSeconds': ?intervalSeconds,
      'mode': ?mode,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory SelfCheck.fromMap(Map<String, dynamic> map) {
    return SelfCheck(
      intervalSeconds: map['intervalSeconds'] == null ? null : map['intervalSeconds'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

