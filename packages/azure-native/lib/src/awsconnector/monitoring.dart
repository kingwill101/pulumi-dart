// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_state_enum_value.dart';

/// Definition of Monitoring
class Monitoring {
  /// <p>Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.</p>
  final MonitoringStateEnumValue? state;

  /// Creates a new [Monitoring].
  /// [state] <p>Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.</p>
  Monitoring({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state == null ? null : state!.toMap(),
    };
  }

  factory Monitoring.fromMap(Map<String, dynamic> map) {
    return Monitoring(
      state: map['state'] == null ? null : MonitoringStateEnumValue.fromMap((map['state'] as Map).cast<String, dynamic>()),
    );
  }
}

