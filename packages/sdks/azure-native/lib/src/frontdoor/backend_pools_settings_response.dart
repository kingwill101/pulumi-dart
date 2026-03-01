// ignore_for_file: unused_element, unnecessary_cast


/// Settings that apply to all backend pools.
class BackendPoolsSettingsResponse {
  /// Whether to enforce certificate name check on HTTPS requests to all backend pools. No effect on non-HTTPS requests.
  final String? enforceCertificateNameCheck;
  /// Send and receive timeout on forwarding request to the backend. When timeout is reached, the request fails and returns.
  final int? sendRecvTimeoutSeconds;

  /// Creates a new [BackendPoolsSettingsResponse].
  /// [enforceCertificateNameCheck] Whether to enforce certificate name check on HTTPS requests to all backend pools. No effect on non-HTTPS requests.
  /// [sendRecvTimeoutSeconds] Send and receive timeout on forwarding request to the backend. When timeout is reached, the request fails and returns.
  BackendPoolsSettingsResponse({
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
      enforceCertificateNameCheck: map['enforceCertificateNameCheck'] == null ? null : map['enforceCertificateNameCheck'] as String,
      sendRecvTimeoutSeconds: map['sendRecvTimeoutSeconds'] == null ? null : map['sendRecvTimeoutSeconds'] as int,
    );
  }
}

