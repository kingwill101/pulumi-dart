// ignore_for_file: unused_element, unnecessary_cast


/// A resource Api configuration for the Telephony channel
class TelephonyChannelResourceApiConfiguration {
  /// The cognitive service region.
  final String? cognitiveServiceRegion;
  /// The cognitive service resourceId.
  final String? cognitiveServiceResourceId;
  /// The cognitive service subscription key.
  final String? cognitiveServiceSubscriptionKey;
  /// The default locale.
  final String? defaultLocale;
  /// The id of config.
  final String? id;
  /// The provider name.
  final String? providerName;

  /// Creates a new [TelephonyChannelResourceApiConfiguration].
  /// [cognitiveServiceRegion] The cognitive service region.
  /// [cognitiveServiceResourceId] The cognitive service resourceId.
  /// [cognitiveServiceSubscriptionKey] The cognitive service subscription key.
  /// [defaultLocale] The default locale.
  /// [id] The id of config.
  /// [providerName] The provider name.
  TelephonyChannelResourceApiConfiguration({
    this.cognitiveServiceRegion,
    this.cognitiveServiceResourceId,
    this.cognitiveServiceSubscriptionKey,
    this.defaultLocale,
    this.id,
    this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cognitiveServiceRegion': ?cognitiveServiceRegion,
      'cognitiveServiceResourceId': ?cognitiveServiceResourceId,
      'cognitiveServiceSubscriptionKey': ?cognitiveServiceSubscriptionKey,
      'defaultLocale': ?defaultLocale,
      'id': ?id,
      'providerName': ?providerName,
    };
  }

  factory TelephonyChannelResourceApiConfiguration.fromMap(Map<String, dynamic> map) {
    return TelephonyChannelResourceApiConfiguration(
      cognitiveServiceRegion: map['cognitiveServiceRegion'] == null ? null : map['cognitiveServiceRegion'] as String,
      cognitiveServiceResourceId: map['cognitiveServiceResourceId'] == null ? null : map['cognitiveServiceResourceId'] as String,
      cognitiveServiceSubscriptionKey: map['cognitiveServiceSubscriptionKey'] == null ? null : map['cognitiveServiceSubscriptionKey'] as String,
      defaultLocale: map['defaultLocale'] == null ? null : map['defaultLocale'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      providerName: map['providerName'] == null ? null : map['providerName'] as String,
    );
  }
}

