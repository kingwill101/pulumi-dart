// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telephony_channel_resource_api_configuration_response.dart';
import 'telephony_phone_numbers_response.dart';

/// The parameters to provide for the Direct Line channel.
class TelephonyChannelPropertiesResponse {
  /// The list of Telephony api configuration
  final pulumi.Input<List<TelephonyChannelResourceApiConfigurationResponse>?>? apiConfigurations;
  /// The extensionKey2
  final pulumi.Input<String?>? cognitiveServiceRegion;
  /// The extensionKey1
  final pulumi.Input<String?>? cognitiveServiceSubscriptionKey;
  /// The default locale of the channel
  final pulumi.Input<String?>? defaultLocale;
  /// Whether the channel is enabled
  final pulumi.Input<bool?>? isEnabled;
  /// The list of Telephony phone numbers
  final pulumi.Input<List<TelephonyPhoneNumbersResponse>?>? phoneNumbers;
  /// The premium SKU applied to the channel
  final pulumi.Input<String?>? premiumSKU;

  /// Creates a new [TelephonyChannelPropertiesResponse].
  /// [apiConfigurations] The list of Telephony api configuration
  /// [cognitiveServiceRegion] The extensionKey2
  /// [cognitiveServiceSubscriptionKey] The extensionKey1
  /// [defaultLocale] The default locale of the channel
  /// [isEnabled] Whether the channel is enabled
  /// [phoneNumbers] The list of Telephony phone numbers
  /// [premiumSKU] The premium SKU applied to the channel
  const TelephonyChannelPropertiesResponse({
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
      apiConfigurations: (() { final guardedValue = map['apiConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelephonyChannelResourceApiConfigurationResponse>(guardedValue, (value) => TelephonyChannelResourceApiConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cognitiveServiceRegion: (() { final guardedValue = map['cognitiveServiceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveServiceSubscriptionKey: (() { final guardedValue = map['cognitiveServiceSubscriptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultLocale: (() { final guardedValue = map['defaultLocale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      phoneNumbers: (() { final guardedValue = map['phoneNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelephonyPhoneNumbersResponse>(guardedValue, (value) => TelephonyPhoneNumbersResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      premiumSKU: (() { final guardedValue = map['premiumSKU']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
