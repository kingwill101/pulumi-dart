// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telephony_channel_resource_api_configuration_response.dart';
import 'telephony_phone_numbers_response.dart';

/// The parameters to provide for the Direct Line channel.
class TelephonyChannelPropertiesResponse {
  /// The list of Telephony api configuration
  final pulumi.Input<List<TelephonyChannelResourceApiConfigurationResponse>>? apiConfigurations;
  /// The extensionKey2
  final pulumi.Input<String>? cognitiveServiceRegion;
  /// The extensionKey1
  final pulumi.Input<String>? cognitiveServiceSubscriptionKey;
  /// The default locale of the channel
  final pulumi.Input<String>? defaultLocale;
  /// Whether the channel is enabled
  final pulumi.Input<bool>? isEnabled;
  /// The list of Telephony phone numbers
  final pulumi.Input<List<TelephonyPhoneNumbersResponse>>? phoneNumbers;
  /// The premium SKU applied to the channel
  final pulumi.Input<String>? premiumSKU;

  /// Creates a new [TelephonyChannelPropertiesResponse].
  /// [apiConfigurations] The list of Telephony api configuration
  /// [cognitiveServiceRegion] The extensionKey2
  /// [cognitiveServiceSubscriptionKey] The extensionKey1
  /// [defaultLocale] The default locale of the channel
  /// [isEnabled] Whether the channel is enabled
  /// [phoneNumbers] The list of Telephony phone numbers
  /// [premiumSKU] The premium SKU applied to the channel
  TelephonyChannelPropertiesResponse({
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
      'apiConfigurations': ?pulumi.Input.mapOptionalInputValue<List<TelephonyChannelResourceApiConfigurationResponse>, List<Map<String, dynamic>>>(apiConfigurations, (value) => pulumi.Input.encodeList<TelephonyChannelResourceApiConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cognitiveServiceRegion': ?cognitiveServiceRegion,
      'cognitiveServiceSubscriptionKey': ?cognitiveServiceSubscriptionKey,
      'defaultLocale': ?defaultLocale,
      'isEnabled': ?isEnabled,
      'phoneNumbers': ?pulumi.Input.mapOptionalInputValue<List<TelephonyPhoneNumbersResponse>, List<Map<String, dynamic>>>(phoneNumbers, (value) => pulumi.Input.encodeList<TelephonyPhoneNumbersResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'premiumSKU': ?premiumSKU,
    };
  }

  factory TelephonyChannelPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TelephonyChannelPropertiesResponse(
      apiConfigurations: map['apiConfigurations'] == null ? null : (pulumi.Input.decodeList<TelephonyChannelResourceApiConfigurationResponse>(map['apiConfigurations']!, (value) => TelephonyChannelResourceApiConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cognitiveServiceRegion: map['cognitiveServiceRegion'] == null ? null : (map['cognitiveServiceRegion']! as String).input(),
      cognitiveServiceSubscriptionKey: map['cognitiveServiceSubscriptionKey'] == null ? null : (map['cognitiveServiceSubscriptionKey']! as String).input(),
      defaultLocale: map['defaultLocale'] == null ? null : (map['defaultLocale']! as String).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled']! as bool).input(),
      phoneNumbers: map['phoneNumbers'] == null ? null : (pulumi.Input.decodeList<TelephonyPhoneNumbersResponse>(map['phoneNumbers']!, (value) => TelephonyPhoneNumbersResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      premiumSKU: map['premiumSKU'] == null ? null : (map['premiumSKU']! as String).input(),
    );
  }
}

