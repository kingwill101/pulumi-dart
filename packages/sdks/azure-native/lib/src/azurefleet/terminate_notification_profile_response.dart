// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies Terminate Scheduled Event related configurations.
class TerminateNotificationProfileResponse {
  /// Specifies whether the Terminate Scheduled event is enabled or disabled.
  final pulumi.Input<bool>? enable;
  /// Configurable length of time a Virtual Machine being deleted will have to
  /// potentially approve the Terminate Scheduled Event before the event is auto
  /// approved (timed out). The configuration must be specified in ISO 8601 format,
  /// the default value is 5 minutes (PT5M)
  final pulumi.Input<String>? notBeforeTimeout;

  /// Creates a new [TerminateNotificationProfileResponse].
  /// [enable] Specifies whether the Terminate Scheduled event is enabled or disabled.
  /// [notBeforeTimeout] Configurable length of time a Virtual Machine being deleted will have to
  TerminateNotificationProfileResponse({
    this.enable,
    this.notBeforeTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'notBeforeTimeout': ?notBeforeTimeout,
    };
  }

  factory TerminateNotificationProfileResponse.fromMap(Map<String, dynamic> map) {
    return TerminateNotificationProfileResponse(
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
      notBeforeTimeout: map['notBeforeTimeout'] == null ? null : (map['notBeforeTimeout'] as String).input(),
    );
  }
}

