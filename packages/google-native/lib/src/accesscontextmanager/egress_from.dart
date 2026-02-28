// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_from_identity_type.dart';
import 'egress_from_source_restriction.dart';
import 'egress_source.dart';

/// Defines the conditions under which an EgressPolicy matches a request. Conditions based on information about the source of the request. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.
class EgressFrom {
  /// A list of identities that are allowed access through this [EgressPolicy]. Should be in the format of email address. The email address should represent individual user or service account only.
  final List<String>? identities;

  /// Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  final EgressFromIdentityType? identityType;

  /// Whether to enforce traffic restrictions based on `sources` field. If the `sources` fields is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  final EgressFromSourceRestriction? sourceRestriction;

  /// Sources that this EgressPolicy authorizes access from. If this field is not empty, then `source_restriction` must be set to `SOURCE_RESTRICTION_ENABLED`.
  final List<EgressSource>? sources;

  /// Creates a new [EgressFrom].
  /// [identities] A list of identities that are allowed access through this [EgressPolicy]. Should be in the format of email address. The email address should represent individual user or service account only.
  /// [identityType] Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  /// [sourceRestriction] Whether to enforce traffic restrictions based on `sources` field. If the `sources` fields is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// [sources] Sources that this EgressPolicy authorizes access from. If this field is not empty, then `source_restriction` must be set to `SOURCE_RESTRICTION_ENABLED`.
  EgressFrom({
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
      map['identityType'] = identityTypeValue.value;
    }
    final sourceRestrictionValue = sourceRestriction;
    if (sourceRestrictionValue != null) {
      map['sourceRestriction'] = sourceRestrictionValue.value;
    }
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] =
          pulumi.Input.encodeList<EgressSource, Map<String, dynamic>>(
              sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory EgressFrom.fromMap(Map<String, dynamic> map) {
    return EgressFrom(
      identities: map['identities'] == null
          ? null
          : (map['identities'] as List).cast<String>(),
      identityType: map['identityType'] == null
          ? null
          : EgressFromIdentityType.fromValue(map['identityType'] as String),
      sourceRestriction: map['sourceRestriction'] == null
          ? null
          : EgressFromSourceRestriction.fromValue(
              map['sourceRestriction'] as String),
      sources: map['sources'] == null
          ? null
          : pulumi.Input.decodeList<EgressSource>(
              map['sources'],
              (value) =>
                  EgressSource.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
