// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the partner.
class PartnerResponse {
  /// Expiration time of the partner authorization. If this timer expires, any request from this partner to create, update or delete resources in subscriber's
  /// context will fail. If specified, the allowed values are between 1 to the value of defaultMaximumExpirationTimeInDays specified in PartnerConfiguration.
  /// If not specified, the default value will be the value of defaultMaximumExpirationTimeInDays specified in PartnerConfiguration or 7 if this value is not specified.
  final pulumi.Input<String>? authorizationExpirationTimeInUtc;
  /// The partner name.
  final pulumi.Input<String>? partnerName;
  /// The immutableId of the corresponding partner registration.
  final pulumi.Input<String>? partnerRegistrationImmutableId;

  /// Creates a new [PartnerResponse].
  /// [authorizationExpirationTimeInUtc] Expiration time of the partner authorization. If this timer expires, any request from this partner to create, update or delete resources in subscriber's
  /// [partnerName] The partner name.
  /// [partnerRegistrationImmutableId] The immutableId of the corresponding partner registration.
  PartnerResponse({
    this.authorizationExpirationTimeInUtc,
    this.partnerName,
    this.partnerRegistrationImmutableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationExpirationTimeInUtc': ?authorizationExpirationTimeInUtc,
      'partnerName': ?partnerName,
      'partnerRegistrationImmutableId': ?partnerRegistrationImmutableId,
    };
  }

  factory PartnerResponse.fromMap(Map<String, dynamic> map) {
    return PartnerResponse(
      authorizationExpirationTimeInUtc: map['authorizationExpirationTimeInUtc'] == null ? null : (map['authorizationExpirationTimeInUtc']! as String).input(),
      partnerName: map['partnerName'] == null ? null : (map['partnerName']! as String).input(),
      partnerRegistrationImmutableId: map['partnerRegistrationImmutableId'] == null ? null : (map['partnerRegistrationImmutableId']! as String).input(),
    );
  }
}

