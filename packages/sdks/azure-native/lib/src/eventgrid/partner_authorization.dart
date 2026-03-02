// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner.dart';

/// The partner authorization details.
class PartnerAuthorization {
  /// The list of authorized partners.
  final pulumi.Input<List<Partner>>? authorizedPartnersList;
  /// Time used to validate the authorization expiration time for each authorized partner. If DefaultMaximumExpirationTimeInDays is
  /// not specified, the default is 7 days. Otherwise, allowed values are between 1 and 365 days.
  final pulumi.Input<int>? defaultMaximumExpirationTimeInDays;

  /// Creates a new [PartnerAuthorization].
  /// [authorizedPartnersList] The list of authorized partners.
  /// [defaultMaximumExpirationTimeInDays] Time used to validate the authorization expiration time for each authorized partner. If DefaultMaximumExpirationTimeInDays is
  PartnerAuthorization({
    this.authorizedPartnersList,
    this.defaultMaximumExpirationTimeInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedPartnersList': ?pulumi.Input.mapOptionalInputValue<List<Partner>, List<Map<String, dynamic>>>(authorizedPartnersList, (value) => pulumi.Input.encodeList<Partner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultMaximumExpirationTimeInDays': ?defaultMaximumExpirationTimeInDays,
    };
  }

  factory PartnerAuthorization.fromMap(Map<String, dynamic> map) {
    return PartnerAuthorization(
      authorizedPartnersList: map['authorizedPartnersList'] == null ? null : (pulumi.Input.decodeList<Partner>(map['authorizedPartnersList'], (value) => Partner.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultMaximumExpirationTimeInDays: map['defaultMaximumExpirationTimeInDays'] == null ? null : (map['defaultMaximumExpirationTimeInDays'] as int).input(),
    );
  }
}

