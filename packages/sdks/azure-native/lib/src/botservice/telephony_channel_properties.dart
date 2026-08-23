// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telephony_channel_resource_api_configuration.dart';
import 'telephony_phone_numbers.dart';

/// The parameters to provide for the Direct Line channel.
class TelephonyChannelProperties {
  /// The list of Telephony api configuration
  final pulumi.Input<List<TelephonyChannelResourceApiConfiguration>>? apiConfigurations;
  /// The extensionKey2
  final pulumi.Input<String>? cognitiveServiceRegion;
  /// The extensionKey1
  final pulumi.Input<String>? cognitiveServiceSubscriptionKey;
  /// The default locale of the channel
  final pulumi.Input<String>? defaultLocale;
  /// Whether the channel is enabled
  final pulumi.Input<bool>? isEnabled;
  /// The list of Telephony phone numbers
  final pulumi.Input<List<TelephonyPhoneNumbers>>? phoneNumbers;
  /// The premium SKU applied to the channel
  final pulumi.Input<String>? premiumSKU;

  /// Creates a new [TelephonyChannelProperties].
  /// [apiConfigurations] The list of Telephony api configuration
  /// [cognitiveServiceRegion] The extensionKey2
  /// [cognitiveServiceSubscriptionKey] The extensionKey1
  /// [defaultLocale] The default locale of the channel
  /// [isEnabled] Whether the channel is enabled
  /// [phoneNumbers] The list of Telephony phone numbers
  /// [premiumSKU] The premium SKU applied to the channel
  const TelephonyChannelProperties({
    this.apiConfigurations,
    this.cognitiveServiceRegion,
    this.cognitiveServiceSubscriptionKey,
    this.defaultLocale,
    this.isEnabled,
    this.phoneNumbers,
    this.premiumSKU,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiConfigurations': ?pulumi.Input.mapOptionalInputValue<List<TelephonyChannelResourceApiConfiguration>, List<Map<String, dynamic>>>(apiConfigurations, (value) => pulumi.Input.encodeList<TelephonyChannelResourceApiConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cognitiveServiceRegion': ?cognitiveServiceRegion,
      'cognitiveServiceSubscriptionKey': ?cognitiveServiceSubscriptionKey,
      'defaultLocale': ?defaultLocale,
      'isEnabled': ?isEnabled,
      'phoneNumbers': ?pulumi.Input.mapOptionalInputValue<List<TelephonyPhoneNumbers>, List<Map<String, dynamic>>>(phoneNumbers, (value) => pulumi.Input.encodeList<TelephonyPhoneNumbers, Map<String, dynamic>>(value, (value) => value.toMap())),
      'premiumSKU': ?premiumSKU,
    };
  }

  factory TelephonyChannelProperties.fromMap(Map<String, dynamic> map) {
    return TelephonyChannelProperties(
      apiConfigurations: (() { final guardedValue = map['apiConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelephonyChannelResourceApiConfiguration>(guardedValue, (value) => TelephonyChannelResourceApiConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cognitiveServiceRegion: (() { final guardedValue = map['cognitiveServiceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveServiceSubscriptionKey: (() { final guardedValue = map['cognitiveServiceSubscriptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultLocale: (() { final guardedValue = map['defaultLocale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      phoneNumbers: (() { final guardedValue = map['phoneNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelephonyPhoneNumbers>(guardedValue, (value) => TelephonyPhoneNumbers.fromMap((value as Map).cast<String, dynamic>()))); })(),
      premiumSKU: (() { final guardedValue = map['premiumSKU']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
