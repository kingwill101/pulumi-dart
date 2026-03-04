// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A telephone number for the Telephony channel
class TelephonyPhoneNumbers {
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

  /// Creates a new [TelephonyPhoneNumbers].
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
  TelephonyPhoneNumbers({
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

  factory TelephonyPhoneNumbers.fromMap(Map<String, dynamic> map) {
    return TelephonyPhoneNumbers(
      acsEndpoint: (() {
        final guardedValue = map['acsEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      acsResourceId: (() {
        final guardedValue = map['acsResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      acsSecret: (() {
        final guardedValue = map['acsSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cognitiveServiceRegion: (() {
        final guardedValue = map['cognitiveServiceRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cognitiveServiceResourceId: (() {
        final guardedValue = map['cognitiveServiceResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cognitiveServiceSubscriptionKey: (() {
        final guardedValue = map['cognitiveServiceSubscriptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultLocale: (() {
        final guardedValue = map['defaultLocale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offerType: (() {
        final guardedValue = map['offerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      phoneNumber: (() {
        final guardedValue = map['phoneNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
