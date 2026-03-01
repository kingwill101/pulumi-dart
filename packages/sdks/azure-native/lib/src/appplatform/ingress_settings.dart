// ignore_for_file: unused_element, unnecessary_cast

import 'ingress_settings_client_auth.dart';

/// App ingress settings payload.
class IngressSettings {
  /// How ingress should communicate with this app backend service.
  final String? backendProtocol;
  /// Client-Certification Authentication.
  final IngressSettingsClientAuth? clientAuth;
  /// Ingress read time out in seconds.
  final int? readTimeoutInSeconds;
  /// Ingress send time out in seconds.
  final int? sendTimeoutInSeconds;
  /// Type of the affinity, set this to Cookie to enable session affinity.
  final String? sessionAffinity;
  /// Time in seconds until the cookie expires.
  final int? sessionCookieMaxAge;

  /// Creates a new [IngressSettings].
  /// [backendProtocol] How ingress should communicate with this app backend service.
  /// [clientAuth] Client-Certification Authentication.
  /// [readTimeoutInSeconds] Ingress read time out in seconds.
  /// [sendTimeoutInSeconds] Ingress send time out in seconds.
  /// [sessionAffinity] Type of the affinity, set this to Cookie to enable session affinity.
  /// [sessionCookieMaxAge] Time in seconds until the cookie expires.
  IngressSettings({
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
      'clientAuth': ?clientAuth == null ? null : clientAuth!.toMap(),
      'readTimeoutInSeconds': ?readTimeoutInSeconds,
      'sendTimeoutInSeconds': ?sendTimeoutInSeconds,
      'sessionAffinity': ?sessionAffinity,
      'sessionCookieMaxAge': ?sessionCookieMaxAge,
    };
  }

  factory IngressSettings.fromMap(Map<String, dynamic> map) {
    return IngressSettings(
      backendProtocol: map['backendProtocol'] == null ? null : map['backendProtocol'] as String,
      clientAuth: map['clientAuth'] == null ? null : IngressSettingsClientAuth.fromMap((map['clientAuth'] as Map).cast<String, dynamic>()),
      readTimeoutInSeconds: map['readTimeoutInSeconds'] == null ? null : map['readTimeoutInSeconds'] as int,
      sendTimeoutInSeconds: map['sendTimeoutInSeconds'] == null ? null : map['sendTimeoutInSeconds'] as int,
      sessionAffinity: map['sessionAffinity'] == null ? null : map['sessionAffinity'] as String,
      sessionCookieMaxAge: map['sessionCookieMaxAge'] == null ? null : map['sessionCookieMaxAge'] as int,
    );
  }
}

