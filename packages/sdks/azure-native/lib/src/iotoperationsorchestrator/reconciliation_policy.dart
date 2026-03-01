// ignore_for_file: unused_element, unnecessary_cast


/// Reconciliation Policy.
class ReconciliationPolicy {
  /// Policy interval.
  final String? interval;
  /// Policy type
  final String type;

  /// Creates a new [ReconciliationPolicy].
  /// [interval] Policy interval.
  /// [type] Policy type
  ReconciliationPolicy({
    this.interval,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'type': type,
    };
  }

  factory ReconciliationPolicy.fromMap(Map<String, dynamic> map) {
    return ReconciliationPolicy(
      interval: map['interval'] == null ? null : map['interval'] as String,
      type: map['type'] as String,
    );
  }
}

