// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_response.dart';

/// The partner authorization details.
class PartnerAuthorizationResponse {
  /// The list of authorized partners.
  final pulumi.Input<List<PartnerResponse>>? authorizedPartnersList;
  /// Time used to validate the authorization expiration time for each authorized partner. If DefaultMaximumExpirationTimeInDays is
  /// not specified, the default is 7 days. Otherwise, allowed values are between 1 and 365 days.
  final pulumi.Input<int>? defaultMaximumExpirationTimeInDays;

  /// Creates a new [PartnerAuthorizationResponse].
  /// [authorizedPartnersList] The list of authorized partners.
  /// [defaultMaximumExpirationTimeInDays] Time used to validate the authorization expiration time for each authorized partner. If DefaultMaximumExpirationTimeInDays is
  PartnerAuthorizationResponse({
    this.authorizedPartnersList,
    this.defaultMaximumExpirationTimeInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedPartnersList': ?pulumi.Input.mapOptionalInputValue<List<PartnerResponse>, List<Map<String, dynamic>>>(authorizedPartnersList, (value) => pulumi.Input.encodeList<PartnerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultMaximumExpirationTimeInDays': ?defaultMaximumExpirationTimeInDays,
    };
  }

  factory PartnerAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return PartnerAuthorizationResponse(
      authorizedPartnersList: (() { final guardedValue = map['authorizedPartnersList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PartnerResponse>(guardedValue, (value) => PartnerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultMaximumExpirationTimeInDays: (() { final guardedValue = map['defaultMaximumExpirationTimeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

