// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings that apply to all backend pools.
class BackendPoolsSettingsResponse {
  /// Whether to enforce certificate name check on HTTPS requests to all backend pools. No effect on non-HTTPS requests.
  final pulumi.Input<String>? enforceCertificateNameCheck;
  /// Send and receive timeout on forwarding request to the backend. When timeout is reached, the request fails and returns.
  final pulumi.Input<int>? sendRecvTimeoutSeconds;

  /// Creates a new [BackendPoolsSettingsResponse].
  /// [enforceCertificateNameCheck] Whether to enforce certificate name check on HTTPS requests to all backend pools. No effect on non-HTTPS requests.
  /// [sendRecvTimeoutSeconds] Send and receive timeout on forwarding request to the backend. When timeout is reached, the request fails and returns.
  const BackendPoolsSettingsResponse({
    this.enforceCertificateNameCheck,
    this.sendRecvTimeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforceCertificateNameCheck': ?enforceCertificateNameCheck,
      'sendRecvTimeoutSeconds': ?sendRecvTimeoutSeconds,
    };
  }

  factory BackendPoolsSettingsResponse.fromMap(Map<String, dynamic> map) {
    return BackendPoolsSettingsResponse(
      enforceCertificateNameCheck: (() { final guardedValue = map['enforceCertificateNameCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendRecvTimeoutSeconds: (() { final guardedValue = map['sendRecvTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

