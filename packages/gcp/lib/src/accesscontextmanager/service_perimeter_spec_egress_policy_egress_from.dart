// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_spec_egress_policy_egress_from_source.dart';

class ServicePerimeterSpecEgressPolicyEgressFrom {
  /// A list of identities that are allowed access through this `EgressPolicy`.
  /// Should be in the format of email address. The email address should
  /// represent individual user or service account only.
  final List<String>? identities;

  /// Specifies the type of identities that are allowed access to outside the
  /// perimeter. If left unspecified, then members of `identities` field will
  /// be allowed access.
  /// Possible values are: `IDENTITY_TYPE_UNSPECIFIED`, `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final String? identityType;

  /// Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// Possible values are: `SOURCE_RESTRICTION_UNSPECIFIED`, `SOURCE_RESTRICTION_ENABLED`, `SOURCE_RESTRICTION_DISABLED`.
  final String? sourceRestriction;

  /// Sources that this EgressPolicy authorizes access from.
  /// Structure is documented below.
  final List<ServicePerimeterSpecEgressPolicyEgressFromSource>? sources;

  /// Creates a new [ServicePerimeterSpecEgressPolicyEgressFrom].
  /// [identities] A list of identities that are allowed access through this `EgressPolicy`.
  /// [identityType] Specifies the type of identities that are allowed access to outside the
  /// [sourceRestriction] Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// [sources] Sources that this EgressPolicy authorizes access from.
  ServicePerimeterSpecEgressPolicyEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identitiesValue = identities;
    if (identitiesValue != null) {
      map['identities'] = identitiesValue;
    }
    final identityTypeValue = identityType;
    if (identityTypeValue != null) {
      map['identityType'] = identityTypeValue;
    }
    final sourceRestrictionValue = sourceRestriction;
    if (sourceRestrictionValue != null) {
      map['sourceRestriction'] = sourceRestrictionValue;
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] = pulumi.Input.encodeList<
          ServicePerimeterSpecEgressPolicyEgressFromSource,
          Map<String, dynamic>>(sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServicePerimeterSpecEgressPolicyEgressFrom.fromMap(
      Map<String, dynamic> map) {
    return ServicePerimeterSpecEgressPolicyEgressFrom(
      identities: map['identities'] == null
          ? null
          : (map['identities'] as List).cast<String>(),
      identityType:
          map['identityType'] == null ? null : map['identityType'] as String,
      sourceRestriction: map['sourceRestriction'] == null
          ? null
          : map['sourceRestriction'] as String,
      sources: map['sources'] == null
          ? null
          : pulumi.Input.decodeList<
                  ServicePerimeterSpecEgressPolicyEgressFromSource>(
              map['sources'],
              (value) =>
                  ServicePerimeterSpecEgressPolicyEgressFromSource.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
