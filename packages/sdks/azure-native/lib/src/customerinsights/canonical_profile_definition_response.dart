// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'canonical_profile_definition_response_properties.dart';

/// Definition of canonical profile.
class CanonicalProfileDefinitionResponse {
  /// Canonical profile ID.
  final pulumi.Input<int>? canonicalProfileId;
  /// Properties of the canonical profile.
  final pulumi.Input<List<CanonicalProfileDefinitionResponseProperties>>? properties;

  /// Creates a new [CanonicalProfileDefinitionResponse].
  /// [canonicalProfileId] Canonical profile ID.
  /// [properties] Properties of the canonical profile.
  const CanonicalProfileDefinitionResponse({
    this.canonicalProfileId,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalProfileId': ?canonicalProfileId,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<CanonicalProfileDefinitionResponseProperties>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<CanonicalProfileDefinitionResponseProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CanonicalProfileDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return CanonicalProfileDefinitionResponse(
      canonicalProfileId: (() { final guardedValue = map['canonicalProfileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CanonicalProfileDefinitionResponseProperties>(guardedValue, (value) => CanonicalProfileDefinitionResponseProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
