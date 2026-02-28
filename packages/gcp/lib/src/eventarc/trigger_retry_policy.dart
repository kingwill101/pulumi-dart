// ignore_for_file: unused_element, unnecessary_cast

class TriggerRetryPolicy {
  /// The maximum number of delivery attempts for any message. The only valid
  /// value is 1.
  final int? maxAttempts;

  /// Creates a new [TriggerRetryPolicy].
  /// [maxAttempts] The maximum number of delivery attempts for any message. The only valid
  TriggerRetryPolicy({
    this.maxAttempts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxAttemptsValue = maxAttempts;
    if (maxAttemptsValue != null) {
      map['maxAttempts'] = maxAttemptsValue;
    }
    return map;
  }

  factory TriggerRetryPolicy.fromMap(Map<String, dynamic> map) {
    return TriggerRetryPolicy(
      maxAttempts:
          map['maxAttempts'] == null ? null : map['maxAttempts'] as int,
    );
  }
}
