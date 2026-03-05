// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies OS Image Scheduled Event related configurations.
class OSImageNotificationProfileResponse {
  /// Specifies whether the OS Image Scheduled event is enabled or disabled.
  final pulumi.Input<bool>? enable;
  /// Length of time a Virtual Machine being reimaged or having its OS upgraded will
  /// have to potentially approve the OS Image Scheduled Event before the event is
  /// auto approved (timed out). The configuration is specified in ISO 8601 format,
  /// and the value must not exceed 15 minutes (PT15M)
  final pulumi.Input<String>? notBeforeTimeout;

  /// Creates a new [OSImageNotificationProfileResponse].
  /// [enable] Specifies whether the OS Image Scheduled event is enabled or disabled.
  /// [notBeforeTimeout] Length of time a Virtual Machine being reimaged or having its OS upgraded will
  OSImageNotificationProfileResponse({
    this.enable,
    this.notBeforeTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'notBeforeTimeout': ?notBeforeTimeout,
    };
  }

  factory OSImageNotificationProfileResponse.fromMap(Map<String, dynamic> map) {
    return OSImageNotificationProfileResponse(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notBeforeTimeout: (() { final guardedValue = map['notBeforeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

