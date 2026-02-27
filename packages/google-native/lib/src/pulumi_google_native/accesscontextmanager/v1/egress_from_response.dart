// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'egress_source_response.dart';

/// Defines the conditions under which an EgressPolicy matches a request. Conditions based on information about the source of the request. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.
class EgressFromResponse {
  /// A list of identities that are allowed access through this [EgressPolicy]. Should be in the format of email address. The email address should represent individual user or service account only.
  final List<String> identities;

  /// Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.
  final String identityType;

  /// Whether to enforce traffic restrictions based on `sources` field. If the `sources` fields is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  final String sourceRestriction;

  /// Sources that this EgressPolicy authorizes access from. If this field is not empty, then `source_restriction` must be set to `SOURCE_RESTRICTION_ENABLED`.
  final List<EgressSourceResponse> sources;

  EgressFromResponse({
    required this.identities,
    required this.identityType,
    required this.sourceRestriction,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identities'] = identities;
    map['identityType'] = identityType;
    map['sourceRestriction'] = sourceRestriction;
    map['sources'] =
        pulumi.Input.encodeList<EgressSourceResponse, Map<String, dynamic>>(
            sources, (value) => value.toMap());
    return map;
  }

  factory EgressFromResponse.fromMap(Map<String, dynamic> map) {
    return EgressFromResponse(
      identities: (map['identities'] as List).cast<String>(),
      identityType: map['identityType'] as String,
      sourceRestriction: map['sourceRestriction'] as String,
      sources: pulumi.Input.decodeList<EgressSourceResponse>(
          map['sources'],
          (value) => EgressSourceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
