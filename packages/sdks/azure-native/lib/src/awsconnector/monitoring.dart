// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_state_enum_value.dart';

/// Definition of Monitoring
class Monitoring {
  /// &lt;p&gt;Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.&lt;/p&gt;
  final pulumi.Input<MonitoringStateEnumValue>? state;

  /// Creates a new [Monitoring].
  /// [state] &lt;p&gt;Indicates whether detailed monitoring is enabled. Otherwise, basic monitoring is enabled.&lt;/p&gt;
  Monitoring({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state':
          ?pulumi.Input.mapOptionalInputValue<
            MonitoringStateEnumValue,
            Map<String, dynamic>
          >(state, (value) => value.toMap()),
    };
  }

  factory Monitoring.fromMap(Map<String, dynamic> map) {
    return Monitoring(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MonitoringStateEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
