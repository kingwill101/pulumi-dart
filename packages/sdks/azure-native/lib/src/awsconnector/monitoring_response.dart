// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_state_enum_value_response.dart';

/// Definition of Monitoring
class MonitoringResponse {
  /// &lt;p&gt;Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.&lt;/p&gt;
  final pulumi.Input<MonitoringStateEnumValueResponse>? state;

  /// Creates a new [MonitoringResponse].
  /// [state] &lt;p&gt;Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.&lt;/p&gt;
  const MonitoringResponse({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?pulumi.Input.mapOptionalInputValue<MonitoringStateEnumValueResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
    };
  }

  factory MonitoringResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringResponse(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringStateEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
