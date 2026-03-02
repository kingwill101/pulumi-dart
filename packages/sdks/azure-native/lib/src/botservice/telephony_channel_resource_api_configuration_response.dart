// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource Api configuration for the Telephony channel
class TelephonyChannelResourceApiConfigurationResponse {
  /// The cognitive service region.
  final pulumi.Input<String>? cognitiveServiceRegion;
  /// The cognitive service resourceId.
  final pulumi.Input<String>? cognitiveServiceResourceId;
  /// The cognitive service subscription key.
  final pulumi.Input<String>? cognitiveServiceSubscriptionKey;
  /// The default locale.
  final pulumi.Input<String>? defaultLocale;
  /// The id of config.
  final pulumi.Input<String>? id;
  /// The provider name.
  final pulumi.Input<String>? providerName;

  /// Creates a new [TelephonyChannelResourceApiConfigurationResponse].
  /// [cognitiveServiceRegion] The cognitive service region.
  /// [cognitiveServiceResourceId] The cognitive service resourceId.
  /// [cognitiveServiceSubscriptionKey] The cognitive service subscription key.
  /// [defaultLocale] The default locale.
  /// [id] The id of config.
  /// [providerName] The provider name.
  TelephonyChannelResourceApiConfigurationResponse({
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

  factory TelephonyChannelResourceApiConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return TelephonyChannelResourceApiConfigurationResponse(
      cognitiveServiceRegion: map['cognitiveServiceRegion'] == null ? null : (map['cognitiveServiceRegion']! as String).input(),
      cognitiveServiceResourceId: map['cognitiveServiceResourceId'] == null ? null : (map['cognitiveServiceResourceId']! as String).input(),
      cognitiveServiceSubscriptionKey: map['cognitiveServiceSubscriptionKey'] == null ? null : (map['cognitiveServiceSubscriptionKey']! as String).input(),
      defaultLocale: map['defaultLocale'] == null ? null : (map['defaultLocale']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName']! as String).input(),
    );
  }
}

