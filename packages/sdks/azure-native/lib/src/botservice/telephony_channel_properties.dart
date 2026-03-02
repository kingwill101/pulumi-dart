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
  TelephonyChannelProperties({
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
      apiConfigurations: map['apiConfigurations'] == null ? null : (pulumi.Input.decodeList<TelephonyChannelResourceApiConfiguration>(map['apiConfigurations']!, (value) => TelephonyChannelResourceApiConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cognitiveServiceRegion: map['cognitiveServiceRegion'] == null ? null : (map['cognitiveServiceRegion']! as String).input(),
      cognitiveServiceSubscriptionKey: map['cognitiveServiceSubscriptionKey'] == null ? null : (map['cognitiveServiceSubscriptionKey']! as String).input(),
      defaultLocale: map['defaultLocale'] == null ? null : (map['defaultLocale']! as String).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled']! as bool).input(),
      phoneNumbers: map['phoneNumbers'] == null ? null : (pulumi.Input.decodeList<TelephonyPhoneNumbers>(map['phoneNumbers']!, (value) => TelephonyPhoneNumbers.fromMap((value as Map).cast<String, dynamic>()))).input(),
      premiumSKU: map['premiumSKU'] == null ? null : (map['premiumSKU']! as String).input(),
    );
  }
}

