// ignore_for_file: unused_element, unnecessary_cast


class PartnerConfigurationPartnerAuthorization {
  /// Expiration time of the partner authorization. Value should be in RFC 3339 format in UTC time zone, for example: "2025-02-04T00:00:00Z".
  ///
  /// > **Note:** If the time from `authorization_expiration_time_in_utc` expires, any request from this partner to create, update or delete resources in the subscriber's context will fail. If not specified, the authorization will expire after `default_maximum_expiration_time_in_days`.
  final String? authorizationExpirationTimeInUtc;
  /// The partner name.
  final String partnerName;
  /// The immutable id of the corresponding partner registration.
  final String partnerRegistrationId;

  /// Creates a new [PartnerConfigurationPartnerAuthorization].
  /// [authorizationExpirationTimeInUtc] Expiration time of the partner authorization. Value should be in RFC 3339 format in UTC time zone, for example: "2025-02-04T00:00:00Z".
  /// [partnerName] The partner name.
  /// [partnerRegistrationId] The immutable id of the corresponding partner registration.
  PartnerConfigurationPartnerAuthorization({
    this.authorizationExpirationTimeInUtc,
    required this.partnerName,
    required this.partnerRegistrationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationExpirationTimeInUtc': ?authorizationExpirationTimeInUtc,
      'partnerName': partnerName,
      'partnerRegistrationId': partnerRegistrationId,
    };
  }

  factory PartnerConfigurationPartnerAuthorization.fromMap(Map<String, dynamic> map) {
    return PartnerConfigurationPartnerAuthorization(
      authorizationExpirationTimeInUtc: map['authorizationExpirationTimeInUtc'] == null ? null : map['authorizationExpirationTimeInUtc'] as String,
      partnerName: map['partnerName'] as String,
      partnerRegistrationId: map['partnerRegistrationId'] as String,
    );
  }
}

