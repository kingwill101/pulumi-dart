// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time configuration.
class TimeConfiguration {
  /// Primary NTP server.
  final pulumi.Input<String>? primaryTimeServer;

  /// Secondary NTP server.
  final pulumi.Input<String>? secondaryTimeServer;

  /// Time zone.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [TimeConfiguration].
  /// [primaryTimeServer] Primary NTP server.
  /// [secondaryTimeServer] Secondary NTP server.
  /// [timeZone] Time zone.
  TimeConfiguration({
    this.primaryTimeServer,
    this.secondaryTimeServer,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryTimeServer': ?primaryTimeServer,
      'secondaryTimeServer': ?secondaryTimeServer,
      'timeZone': ?timeZone,
    };
  }

  factory TimeConfiguration.fromMap(Map<String, dynamic> map) {
    return TimeConfiguration(
      primaryTimeServer: (() {
        final guardedValue = map['primaryTimeServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryTimeServer: (() {
        final guardedValue = map['secondaryTimeServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
