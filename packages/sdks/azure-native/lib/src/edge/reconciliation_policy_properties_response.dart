// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a ReconciliationPolicy
class ReconciliationPolicyPropertiesResponse {
  /// Policy interval
  final pulumi.Input<String> interval;
  /// The state of the ReconciliationPolicy
  final pulumi.Input<String> state;

  /// Creates a new [ReconciliationPolicyPropertiesResponse].
  /// [interval] Policy interval
  /// [state] The state of the ReconciliationPolicy
  ReconciliationPolicyPropertiesResponse({
    required this.interval,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interval': interval,
      'state': state,
    };
  }

  factory ReconciliationPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReconciliationPolicyPropertiesResponse(
      interval: (map['interval'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

