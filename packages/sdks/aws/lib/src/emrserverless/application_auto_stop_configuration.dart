// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAutoStopConfiguration {
  /// Enables the application to automatically stop after a certain amount of time being idle. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The amount of idle time in minutes after which your application will automatically stop. Defaults to `15` minutes.
  final pulumi.Input<int>? idleTimeoutMinutes;

  /// Creates a new [ApplicationAutoStopConfiguration].
  /// [enabled] Enables the application to automatically stop after a certain amount of time being idle. Defaults to `true`.
  /// [idleTimeoutMinutes] The amount of idle time in minutes after which your application will automatically stop. Defaults to `15` minutes.
  ApplicationAutoStopConfiguration({
    this.enabled,
    this.idleTimeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'idleTimeoutMinutes': ?idleTimeoutMinutes,
    };
  }

  factory ApplicationAutoStopConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationAutoStopConfiguration(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      idleTimeoutMinutes: map['idleTimeoutMinutes'] == null ? null : ((map['idleTimeoutMinutes'] as int).input()).input(),
    );
  }
}

