// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_from_identity_type.dart';
import 'ingress_source.dart';

/// Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in `sources` AND identity related fields in order to match.
class IngressFrom {
  /// A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.
  final List<String>? identities;

  /// Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  final IngressFromIdentityType? identityType;

  /// Sources that this IngressPolicy authorizes access from.
  final List<IngressSource>? sources;

  /// Creates a new [IngressFrom].
  /// [identities] A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.
  /// [identityType] Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  /// [sources] Sources that this IngressPolicy authorizes access from.
  IngressFrom({
    this.identities,
    this.identityType,
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
    final sourcesValue = sources;
    if (sourcesValue != null) {
      map['sources'] =
          pulumi.Input.encodeList<IngressSource, Map<String, dynamic>>(
              sourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory IngressFrom.fromMap(Map<String, dynamic> map) {
    return IngressFrom(
      identities: map['identities'] == null
          ? null
          : (map['identities'] as List).cast<String>(),
      identityType: map['identityType'] == null
          ? null
          : IngressFromIdentityType.fromValue(map['identityType'] as String),
      sources: map['sources'] == null
          ? null
          : pulumi.Input.decodeList<IngressSource>(
              map['sources'],
              (value) => IngressSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
