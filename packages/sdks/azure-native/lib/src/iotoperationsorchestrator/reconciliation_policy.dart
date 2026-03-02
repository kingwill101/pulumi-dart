// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reconciliation Policy.
class ReconciliationPolicy {
  /// Policy interval.
  final pulumi.Input<String>? interval;
  /// Policy type
  final pulumi.Input<String> type;

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
      interval: map['interval'] == null ? null : (map['interval'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

