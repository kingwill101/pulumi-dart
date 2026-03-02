// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationAutoStartConfiguration {
  /// Enables the application to automatically start on job submission. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ApplicationAutoStartConfiguration].
  /// [enabled] Enables the application to automatically start on job submission. Defaults to `true`.
  ApplicationAutoStartConfiguration({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ApplicationAutoStartConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationAutoStartConfiguration(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
    );
  }
}

