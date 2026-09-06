// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile properties for the Terminate Scheduled event.
class TerminateNotificationProfile {
  /// Specifies whether the Terminate Scheduled event is enabled or disabled.
  final pulumi.Input<bool?>? enable;
  /// Configurable length of time a Virtual Machine being deleted will have to potentially approve the Terminate Scheduled Event before the event is auto approved (timed out). The configuration must be specified in ISO 8601 format, the default value is 5 minutes (PT5M)
  final pulumi.Input<String?>? notBeforeTimeout;

  /// Creates a new [TerminateNotificationProfile].
  /// [enable] Specifies whether the Terminate Scheduled event is enabled or disabled.
  /// [notBeforeTimeout] Configurable length of time a Virtual Machine being deleted will have to potentially approve the Terminate Scheduled Event before the event is auto approved (timed out). The configuration must be specified in ISO 8601 format, the default value is 5 minutes (PT5M)
  const TerminateNotificationProfile({
    this.enable,
    this.notBeforeTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'notBeforeTimeout': ?notBeforeTimeout,
    };
  }

  factory TerminateNotificationProfile.fromMap(Map<String, dynamic> map) {
    return TerminateNotificationProfile(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notBeforeTimeout: (() { final guardedValue = map['notBeforeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
