// ignore_for_file: unused_element, unnecessary_cast


/// Defines server trust settings for an endpoint.
class TrustSettings {
  /// Defines a secret reference for certificates to trust.
  final String? trustList;

  /// Creates a new [TrustSettings].
  /// [trustList] Defines a secret reference for certificates to trust.
  TrustSettings({
    this.trustList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustList': ?trustList,
    };
  }

  factory TrustSettings.fromMap(Map<String, dynamic> map) {
    return TrustSettings(
      trustList: map['trustList'] == null ? null : map['trustList'] as String,
    );
  }
}

