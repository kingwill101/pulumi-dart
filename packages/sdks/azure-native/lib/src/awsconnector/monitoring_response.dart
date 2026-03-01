// ignore_for_file: unused_element, unnecessary_cast

import 'monitoring_state_enum_value_response.dart';

/// Definition of Monitoring
class MonitoringResponse {
  /// <p>Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.</p>
  final MonitoringStateEnumValueResponse? state;

  /// Creates a new [MonitoringResponse].
  /// [state] <p>Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.</p>
  MonitoringResponse({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state == null ? null : state!.toMap(),
    };
  }

  factory MonitoringResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringResponse(
      state: map['state'] == null ? null : MonitoringStateEnumValueResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
    );
  }
}

