// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_identity.dart';

/// The B2B partner content.
class B2BPartnerContent {
  /// The list of partner business identities.
  final pulumi.Input<List<BusinessIdentity>>? businessIdentities;

  /// Creates a new [B2BPartnerContent].
  /// [businessIdentities] The list of partner business identities.
  const B2BPartnerContent({
    this.businessIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessIdentities': ?pulumi.Input.mapOptionalInputValue<List<BusinessIdentity>, List<Map<String, dynamic>>>(businessIdentities, (value) => pulumi.Input.encodeList<BusinessIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory B2BPartnerContent.fromMap(Map<String, dynamic> map) {
    return B2BPartnerContent(
      businessIdentities: (() { final guardedValue = map['businessIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BusinessIdentity>(guardedValue, (value) => BusinessIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

