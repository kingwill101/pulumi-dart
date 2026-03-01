// ignore_for_file: unused_element, unnecessary_cast


/// Defines server trust settings for an endpoint.
class TrustSettingsResponse {
  /// Defines a secret reference for certificates to trust.
  final String? trustList;

  /// Creates a new [TrustSettingsResponse].
  /// [trustList] Defines a secret reference for certificates to trust.
  TrustSettingsResponse({
    this.trustList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustList': ?trustList,
    };
  }

  factory TrustSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TrustSettingsResponse(
      trustList: map['trustList'] == null ? null : map['trustList'] as String,
    );
  }
}

