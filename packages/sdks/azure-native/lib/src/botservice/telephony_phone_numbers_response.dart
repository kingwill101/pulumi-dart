// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A telephone number for the Telephony channel
class TelephonyPhoneNumbersResponse {
  /// The endpoint of ACS.
  final pulumi.Input<String>? acsEndpoint;
  /// The resource id of ACS.
  final pulumi.Input<String>? acsResourceId;
  /// The secret of ACS.
  final pulumi.Input<String>? acsSecret;
  /// The service region of cognitive service.
  final pulumi.Input<String>? cognitiveServiceRegion;
  /// The resource id of cognitive service.
  final pulumi.Input<String>? cognitiveServiceResourceId;
  /// The subscription key of cognitive service.
  final pulumi.Input<String>? cognitiveServiceSubscriptionKey;
  /// The default locale of the phone number.
  final pulumi.Input<String>? defaultLocale;
  /// The element id.
  final pulumi.Input<String>? id;
  /// Optional Property that will determine the offering type of the phone.
  final pulumi.Input<String>? offerType;
  /// The phone number.
  final pulumi.Input<String>? phoneNumber;

  /// Creates a new [TelephonyPhoneNumbersResponse].
  /// [acsEndpoint] The endpoint of ACS.
  /// [acsResourceId] The resource id of ACS.
  /// [acsSecret] The secret of ACS.
  /// [cognitiveServiceRegion] The service region of cognitive service.
  /// [cognitiveServiceResourceId] The resource id of cognitive service.
  /// [cognitiveServiceSubscriptionKey] The subscription key of cognitive service.
  /// [defaultLocale] The default locale of the phone number.
  /// [id] The element id.
  /// [offerType] Optional Property that will determine the offering type of the phone.
  /// [phoneNumber] The phone number.
  TelephonyPhoneNumbersResponse({
    this.acsEndpoint,
    this.acsResourceId,
    this.acsSecret,
    this.cognitiveServiceRegion,
    this.cognitiveServiceResourceId,
    this.cognitiveServiceSubscriptionKey,
    this.defaultLocale,
    this.id,
    this.offerType,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acsEndpoint': ?acsEndpoint,
      'acsResourceId': ?acsResourceId,
      'acsSecret': ?acsSecret,
      'cognitiveServiceRegion': ?cognitiveServiceRegion,
      'cognitiveServiceResourceId': ?cognitiveServiceResourceId,
      'cognitiveServiceSubscriptionKey': ?cognitiveServiceSubscriptionKey,
      'defaultLocale': ?defaultLocale,
      'id': ?id,
      'offerType': ?offerType,
      'phoneNumber': ?phoneNumber,
    };
  }

  factory TelephonyPhoneNumbersResponse.fromMap(Map<String, dynamic> map) {
    return TelephonyPhoneNumbersResponse(
      acsEndpoint: map['acsEndpoint'] == null ? null : (map['acsEndpoint']! as String).input(),
      acsResourceId: map['acsResourceId'] == null ? null : (map['acsResourceId']! as String).input(),
      acsSecret: map['acsSecret'] == null ? null : (map['acsSecret']! as String).input(),
      cognitiveServiceRegion: map['cognitiveServiceRegion'] == null ? null : (map['cognitiveServiceRegion']! as String).input(),
      cognitiveServiceResourceId: map['cognitiveServiceResourceId'] == null ? null : (map['cognitiveServiceResourceId']! as String).input(),
      cognitiveServiceSubscriptionKey: map['cognitiveServiceSubscriptionKey'] == null ? null : (map['cognitiveServiceSubscriptionKey']! as String).input(),
      defaultLocale: map['defaultLocale'] == null ? null : (map['defaultLocale']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      offerType: map['offerType'] == null ? null : (map['offerType']! as String).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (map['phoneNumber']! as String).input(),
    );
  }
}

