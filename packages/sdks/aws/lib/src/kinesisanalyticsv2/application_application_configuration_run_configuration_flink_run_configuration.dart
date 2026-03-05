// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration {
  /// When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. Default is `false`.
  final pulumi.Input<bool>? allowNonRestoredState;

  /// Creates a new [ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration].
  /// [allowNonRestoredState] When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. Default is `false`.
  ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration({
    this.allowNonRestoredState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonRestoredState': ?allowNonRestoredState,
    };
  }

  factory ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationRunConfigurationFlinkRunConfiguration(
      allowNonRestoredState: (() { final guardedValue = map['allowNonRestoredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

