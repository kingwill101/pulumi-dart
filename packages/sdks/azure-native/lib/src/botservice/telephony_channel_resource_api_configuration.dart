// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A resource Api configuration for the Telephony channel
class TelephonyChannelResourceApiConfiguration {
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

  /// Creates a new [TelephonyChannelResourceApiConfiguration].
  /// [cognitiveServiceRegion] The cognitive service region.
  /// [cognitiveServiceResourceId] The cognitive service resourceId.
  /// [cognitiveServiceSubscriptionKey] The cognitive service subscription key.
  /// [defaultLocale] The default locale.
  /// [id] The id of config.
  /// [providerName] The provider name.
  const TelephonyChannelResourceApiConfiguration({
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
      cognitiveServiceRegion: (() { final guardedValue = map['cognitiveServiceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveServiceResourceId: (() { final guardedValue = map['cognitiveServiceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveServiceSubscriptionKey: (() { final guardedValue = map['cognitiveServiceSubscriptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultLocale: (() { final guardedValue = map['defaultLocale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

