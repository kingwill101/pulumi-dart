// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reconciliation Policy.
class ReconciliationPolicyResponse {
  /// Policy interval.
  final pulumi.Input<String>? interval;
  /// Policy type
  final pulumi.Input<String> type;

  /// Creates a new [ReconciliationPolicyResponse].
  /// [interval] Policy interval.
  /// [type] Policy type
  ReconciliationPolicyResponse({
    this.interval,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': ?interval,
      'type': type,
    };
  }

  factory ReconciliationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ReconciliationPolicyResponse(
      interval: map['interval'] == null ? null : (map['interval']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

