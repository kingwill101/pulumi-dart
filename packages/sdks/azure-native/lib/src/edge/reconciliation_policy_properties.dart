// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a ReconciliationPolicy
class ReconciliationPolicyProperties {
  /// Policy interval
  final pulumi.Input<String> interval;
  /// The state of the ReconciliationPolicy
  final pulumi.Input<String> state;

  /// Creates a new [ReconciliationPolicyProperties].
  /// [interval] Policy interval
  /// [state] The state of the ReconciliationPolicy
  ReconciliationPolicyProperties({
    required this.interval,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'state': state,
    };
  }

  factory ReconciliationPolicyProperties.fromMap(Map<String, dynamic> map) {
    return ReconciliationPolicyProperties(
      interval: (map['interval'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

