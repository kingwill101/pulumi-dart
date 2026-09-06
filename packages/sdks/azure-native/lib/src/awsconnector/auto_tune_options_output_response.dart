// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_tune_state_enum_value_response.dart';

/// Definition of AutoTuneOptionsOutput
class AutoTuneOptionsOutputResponse {
  /// &lt;p&gt;Any errors that occurred while enabling or disabling Auto-Tune.&lt;/p&gt;
  final pulumi.Input<String?>? errorMessage;
  /// &lt;p&gt;The current state of Auto-Tune on the domain.&lt;/p&gt;
  final pulumi.Input<AutoTuneStateEnumValueResponse?>? state;
  /// &lt;p&gt;Whether the domain's off-peak window will be used to deploy Auto-Tune changes rather than a maintenance schedule.&lt;/p&gt;
  final pulumi.Input<bool?>? useOffPeakWindow;

  /// Creates a new [AutoTuneOptionsOutputResponse].
  /// [errorMessage] &lt;p&gt;Any errors that occurred while enabling or disabling Auto-Tune.&lt;/p&gt;
  /// [state] &lt;p&gt;The current state of Auto-Tune on the domain.&lt;/p&gt;
  /// [useOffPeakWindow] &lt;p&gt;Whether the domain's off-peak window will be used to deploy Auto-Tune changes rather than a maintenance schedule.&lt;/p&gt;
  const AutoTuneOptionsOutputResponse({
    this.errorMessage,
    this.state,
    this.useOffPeakWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'state': ?pulumi.Input.mapOptionalInputValue<AutoTuneStateEnumValueResponse, Map<String, dynamic>>(state, (value) => value.toMap()),
      'useOffPeakWindow': ?useOffPeakWindow,
    };
  }

  factory AutoTuneOptionsOutputResponse.fromMap(Map<String, dynamic> map) {
    return AutoTuneOptionsOutputResponse(
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoTuneStateEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useOffPeakWindow: (() { final guardedValue = map['useOffPeakWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
