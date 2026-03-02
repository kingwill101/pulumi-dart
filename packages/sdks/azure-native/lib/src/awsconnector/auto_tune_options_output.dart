// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_tune_state_enum_value.dart';

/// Definition of AutoTuneOptionsOutput
class AutoTuneOptionsOutput {
  /// <p>Any errors that occurred while enabling or disabling Auto-Tune.</p>
  final pulumi.Input<String>? errorMessage;
  /// <p>The current state of Auto-Tune on the domain.</p>
  final pulumi.Input<AutoTuneStateEnumValue>? state;
  /// <p>Whether the domain's off-peak window will be used to deploy Auto-Tune changes rather than a maintenance schedule.</p>
  final pulumi.Input<bool>? useOffPeakWindow;

  /// Creates a new [AutoTuneOptionsOutput].
  /// [errorMessage] <p>Any errors that occurred while enabling or disabling Auto-Tune.</p>
  /// [state] <p>The current state of Auto-Tune on the domain.</p>
  /// [useOffPeakWindow] <p>Whether the domain's off-peak window will be used to deploy Auto-Tune changes rather than a maintenance schedule.</p>
  AutoTuneOptionsOutput({
    this.errorMessage,
    this.state,
    this.useOffPeakWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorMessage': ?errorMessage,
      'state': ?pulumi.Input.mapOptionalInputValue<AutoTuneStateEnumValue, Map<String, dynamic>>(state, (value) => value.toMap()),
      'useOffPeakWindow': ?useOffPeakWindow,
    };
  }

  factory AutoTuneOptionsOutput.fromMap(Map<String, dynamic> map) {
    return AutoTuneOptionsOutput(
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      state: map['state'] == null ? null : (AutoTuneStateEnumValue.fromMap((map['state'] as Map).cast<String, dynamic>())).input(),
      useOffPeakWindow: map['useOffPeakWindow'] == null ? null : (map['useOffPeakWindow'] as bool).input(),
    );
  }
}

