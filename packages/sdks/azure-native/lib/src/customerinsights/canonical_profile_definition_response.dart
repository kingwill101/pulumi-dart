// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canonical_profile_definition_response_properties.dart';

/// Definition of canonical profile.
class CanonicalProfileDefinitionResponse {
  /// Canonical profile ID.
  final int? canonicalProfileId;
  /// Properties of the canonical profile.
  final List<CanonicalProfileDefinitionResponseProperties>? properties;

  /// Creates a new [CanonicalProfileDefinitionResponse].
  /// [canonicalProfileId] Canonical profile ID.
  /// [properties] Properties of the canonical profile.
  CanonicalProfileDefinitionResponse({
    this.canonicalProfileId,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalProfileId': ?canonicalProfileId,
      'properties': ?properties == null ? null : pulumi.Input.encodeList<CanonicalProfileDefinitionResponseProperties, Map<String, dynamic>>(properties!, (value) => value.toMap()),
    };
  }

  factory CanonicalProfileDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return CanonicalProfileDefinitionResponse(
      canonicalProfileId: map['canonicalProfileId'] == null ? null : map['canonicalProfileId'] as int,
      properties: map['properties'] == null ? null : pulumi.Input.decodeList<CanonicalProfileDefinitionResponseProperties>(map['properties'], (value) => CanonicalProfileDefinitionResponseProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

