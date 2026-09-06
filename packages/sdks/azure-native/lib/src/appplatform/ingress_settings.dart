// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_settings_client_auth.dart';

/// App ingress settings payload.
class IngressSettings {
  /// How ingress should communicate with this app backend service.
  final pulumi.Input<dynamic>? backendProtocol;
  /// Client-Certification Authentication.
  final pulumi.Input<IngressSettingsClientAuth?>? clientAuth;
  /// Ingress read time out in seconds.
  final pulumi.Input<int?>? readTimeoutInSeconds;
  /// Ingress send time out in seconds.
  final pulumi.Input<int?>? sendTimeoutInSeconds;
  /// Type of the affinity, set this to Cookie to enable session affinity.
  final pulumi.Input<dynamic>? sessionAffinity;
  /// Time in seconds until the cookie expires.
  final pulumi.Input<int?>? sessionCookieMaxAge;

  /// Creates a new [IngressSettings].
  /// [backendProtocol] How ingress should communicate with this app backend service.
  /// [clientAuth] Client-Certification Authentication.
  /// [readTimeoutInSeconds] Ingress read time out in seconds.
  /// [sendTimeoutInSeconds] Ingress send time out in seconds.
  /// [sessionAffinity] Type of the affinity, set this to Cookie to enable session affinity.
  /// [sessionCookieMaxAge] Time in seconds until the cookie expires.
  const IngressSettings({
    this.backendProtocol,
    this.clientAuth,
    this.readTimeoutInSeconds,
    this.sendTimeoutInSeconds,
    this.sessionAffinity,
    this.sessionCookieMaxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendProtocol': ?backendProtocol,
      'clientAuth': ?pulumi.Input.mapOptionalInputValue<IngressSettingsClientAuth, Map<String, dynamic>>(clientAuth, (value) => value.toMap()),
      'readTimeoutInSeconds': ?readTimeoutInSeconds,
      'sendTimeoutInSeconds': ?sendTimeoutInSeconds,
      'sessionAffinity': ?sessionAffinity,
      'sessionCookieMaxAge': ?sessionCookieMaxAge,
    };
  }

  factory IngressSettings.fromMap(Map<String, dynamic> map) {
    return IngressSettings(
      backendProtocol: (() { final guardedValue = map['backendProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clientAuth: (() { final guardedValue = map['clientAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressSettingsClientAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      readTimeoutInSeconds: (() { final guardedValue = map['readTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sendTimeoutInSeconds: (() { final guardedValue = map['sendTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sessionCookieMaxAge: (() { final guardedValue = map['sessionCookieMaxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
