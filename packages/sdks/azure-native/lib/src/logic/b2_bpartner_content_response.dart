// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_identity_response.dart';

/// The B2B partner content.
class B2BPartnerContentResponse {
  /// The list of partner business identities.
  final pulumi.Input<List<BusinessIdentityResponse>>? businessIdentities;

  /// Creates a new [B2BPartnerContentResponse].
  /// [businessIdentities] The list of partner business identities.
  B2BPartnerContentResponse({
    this.businessIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessIdentities': ?pulumi.Input.mapOptionalInputValue<List<BusinessIdentityResponse>, List<Map<String, dynamic>>>(businessIdentities, (value) => pulumi.Input.encodeList<BusinessIdentityResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory B2BPartnerContentResponse.fromMap(Map<String, dynamic> map) {
    return B2BPartnerContentResponse(
      businessIdentities: (() { final guardedValue = map['businessIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BusinessIdentityResponse>(guardedValue, (value) => BusinessIdentityResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

