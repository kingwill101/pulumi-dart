// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_response.dart';

/// The partner authorization details.
class PartnerAuthorizationResponse {
  /// The list of authorized partners.
  final List<PartnerResponse>? authorizedPartnersList;
  /// Time used to validate the authorization expiration time for each authorized partner. If DefaultMaximumExpirationTimeInDays is
  /// not specified, the default is 7 days. Otherwise, allowed values are between 1 and 365 days.
  final int? defaultMaximumExpirationTimeInDays;

  /// Creates a new [PartnerAuthorizationResponse].
  /// [authorizedPartnersList] The list of authorized partners.
  /// [defaultMaximumExpirationTimeInDays] Time used to validate the authorization expiration time for each authorized partner. If DefaultMaximumExpirationTimeInDays is
  PartnerAuthorizationResponse({
    this.authorizedPartnersList,
    this.defaultMaximumExpirationTimeInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedPartnersList': ?authorizedPartnersList == null ? null : pulumi.Input.encodeList<PartnerResponse, Map<String, dynamic>>(authorizedPartnersList!, (value) => value.toMap()),
      'defaultMaximumExpirationTimeInDays': ?defaultMaximumExpirationTimeInDays,
    };
  }

  factory PartnerAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return PartnerAuthorizationResponse(
      authorizedPartnersList: map['authorizedPartnersList'] == null ? null : pulumi.Input.decodeList<PartnerResponse>(map['authorizedPartnersList'], (value) => PartnerResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultMaximumExpirationTimeInDays: map['defaultMaximumExpirationTimeInDays'] == null ? null : map['defaultMaximumExpirationTimeInDays'] as int,
    );
  }
}

