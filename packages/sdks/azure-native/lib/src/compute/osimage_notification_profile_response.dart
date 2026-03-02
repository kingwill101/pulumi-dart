// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OSImageNotificationProfileResponse {
  /// Specifies whether the OS Image Scheduled event is enabled or disabled.
  final pulumi.Input<bool>? enable;
  /// Length of time a Virtual Machine being reimaged or having its OS upgraded will have to potentially approve the OS Image Scheduled Event before the event is auto approved (timed out). The configuration is specified in ISO 8601 format, and the value must be 15 minutes (PT15M)
  final pulumi.Input<String>? notBeforeTimeout;

  /// Creates a new [OSImageNotificationProfileResponse].
  /// [enable] Specifies whether the OS Image Scheduled event is enabled or disabled.
  /// [notBeforeTimeout] Length of time a Virtual Machine being reimaged or having its OS upgraded will have to potentially approve the OS Image Scheduled Event before the event is auto approved (timed out). The configuration is specified in ISO 8601 format, and the value must be 15 minutes (PT15M)
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
      enable: map['enable'] == null ? null : (map['enable'] as bool).input(),
      notBeforeTimeout: map['notBeforeTimeout'] == null ? null : (map['notBeforeTimeout'] as String).input(),
    );
  }
}

