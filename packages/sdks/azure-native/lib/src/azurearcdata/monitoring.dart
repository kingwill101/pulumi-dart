// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The monitoring configuration.
class Monitoring {
  /// Indicates if monitoring is enabled for this SQL Server instance.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [Monitoring].
  /// [enabled] Indicates if monitoring is enabled for this SQL Server instance.
  Monitoring({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory Monitoring.fromMap(Map<String, dynamic> map) {
    return Monitoring(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

